class Order < ActiveRecord::Base
  include AASM

  has_many :ordered_plants, dependent: :destroy
  has_many :plants, through: :ordered_plants

  enum state: { initial: 0, confirmed: 1, rejected: -1, completed: 2, archived: 5 }

  uniquify :token

  accepts_nested_attributes_for :ordered_plants

  validates :orderer_name, presence: true
  validates :orderer_email, presence: true
  validates_format_of :orderer_email,:with => Devise.email_regexp

  scope :expired, -> { where('updated_at > ?', 1.year.ago) }

  after_create :send_creation_email

  aasm :column => :state, enum: true do
    Order.states.keys.each.with_index do |st, i|
      if i == 0
        state st.to_sym, initial: true
      else
        state st.to_sym
      end
    end

    event :confirm, before: :summarize_price, guard: :ready_for_confirmation?,
                    after: :send_confirmed_email do
      transitions :from => :initial, :to => :confirmed
    end

    event :archive do
      transitions :from => [:rejected, :completed, :initial], :to => :archived
    end
  end

  private

  def summarize_price
    self.price_summary = ordered_plants.sum(:price)
  end

  def ready_for_confirmation?
    orderer_email.present?
  end

  def send_confirmed_email
    OrderMailer.confirmed(self.id).deliver_later
  end

  def send_creation_email
    OrderMailer.created(self.id).deliver_later
  end
end
