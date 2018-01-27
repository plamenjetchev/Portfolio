module SetPageTitleConcern 
  extend ActiveSupport::Concern

  included do 
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Portfolio | My Portfolio Site"
    @seo_keywords = "Plamen Jetchev portfolio"
  end
end