# -*- encoding : utf-8 -*-
module SeoAttributes
  extend ActiveSupport::Concern

  included do
    before_save :set_seo_title
    before_save :set_seo_keywords
    before_save :set_seo_description

    serialize :seo_keywords, Array
  end

  def set_seo_title
    self.seo_title = name
  end

  def set_seo_keywords
    seo_keywords ||= []
    if seo_keywords.count <= 20
      self.seo_keywords = seo_keywords.push(name) unless seo_keywords.include?(name)
      self.seo_keywords = seo_keywords.push(name) unless seo_keywords.include?(science_name)
    end
  end

  def set_seo_description
    # 160 - recommended_length_of_seo_description
    self.seo_description = description.truncate(160, separator: " ")
  end
end
