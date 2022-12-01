class LandingPageController < ApplicationController
  skip_before_action :authenticate_user!

  def splash
    if user_signed_in?
      redirect_to categories_path
    end
  end
end
