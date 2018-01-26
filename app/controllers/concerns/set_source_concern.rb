module SetSourceConcern
  extend ActiveSupport::Concern

  included do 
    before_action :set_source_concern
  end

  def set_source_concern
    session[:source] = params[:q] if params[:q]
  end
end