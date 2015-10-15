class PlantDecorator < Draper::Decorator
  delegate_all

  def attribute_names_to_display
    object.attributes.each_with_object([]) do |(key, value), memo|
      next if value.blank?

      if %w(name science_name leaf_color blossom_color blossom_start blossom_duration price description).include?(key)
        memo.push(key)
      end
    end
  end

  def blossom_color
    color(object.blossom_color)
  end

  def leaf_color
    color(object.leaf_color)
  end

  def blossom_start
    h.l(object.blossom_start, format: :short)
  end

  def disabled
    if h.session[:order] && h.session[:order].include?(object.id.to_s)
      'disabled'
    else
      'active'
    end
  end

private

  def color(rgb)
    h.content_tag(:div, '', class: 'color_div', style: "background-color: #{rgb}").html_safe
  end

end
