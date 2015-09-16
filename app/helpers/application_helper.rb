module ApplicationHelper
  def truncated_text(text)
    text && text.truncate(100, separator: " ")
  end

  def human_months
    I18n.t('date.month_names_prepositional').map.with_index{|month_name, index| [month_name, index+1]}
  end
end
