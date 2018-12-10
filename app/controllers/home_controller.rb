class HomeController < ApplicationController
  def index
    if user_signed_in?
      ForestMailer.welcome_email("#{current_user.email}").deliver_now
    else
      puts "pas signed"
    end
  end
end
