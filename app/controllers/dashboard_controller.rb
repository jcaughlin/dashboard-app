class DashboardController < ApplicationController
  def main
    # @disabled_apps = Application.where("default_status = false")
    @user_active_apps = Current.user.applications

  

    # @enabled_apps = Application.where("default_status = true")
  end

  def add
  
  end
end