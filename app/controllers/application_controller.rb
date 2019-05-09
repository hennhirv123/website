class ApplicationController < ActionController::Base
  before_action :set_locale # before any user action, the method "set_locale" is called. The definition of the method is below
  
  def show
  end

  def set_locale # here you can see that it either switches to the supplied locale (params[:locale]) OR it uses the default locale.
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
