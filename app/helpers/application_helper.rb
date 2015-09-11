module ApplicationHelper
  def truncated_text(text)
    text && text.truncate(100, separator: " ")
  end
end
