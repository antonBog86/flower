# -*- encoding : utf-8 -*-
module SeoAttributes
  extend ActiveSupport::Concern

  included do
    before_save :set_seo_title
    before_save :set_seo_keywords
    before_save :set_seo_description
  end

  def set_seo_title
    self.seo_title = name
  end

  def set_seo_keywords
    self.seo_keywords = seo_keywords.push(name)
  end

  def set_seo_description
    self.seo_description = description
  end
end
