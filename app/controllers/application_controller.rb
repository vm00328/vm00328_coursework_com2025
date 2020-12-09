class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :render_404

  private

#Render not found page.

  def render_404
    respond_to do |format|
      format.html {render file: "#{Rails.root}/public/404",layout: false, status: :not_found}
      format.xml {head :not_found}
      format.any {head :not_found}
    end
  end
end
