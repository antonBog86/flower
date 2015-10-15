class OrderMailer < ApplicationMailer
  def created(order_id)
    @order = Order.find(order_id)
    mail(to: @order.orderer_email, subject: default_i18n_subject(name: Settings.site_title))
  end

  def confirmed(order_id)
    @order = Order.find(order_id)
    mail(to: @order.orderer_email, subject: default_i18n_subject(name: Settings.site_title))
  end
end
