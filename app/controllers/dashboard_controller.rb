class DashboardController < ApplicationController
  def main
    @disabled_apps = Application.where("default_status = false")
    @enabled_apps = Application.where("default_status = true")
  end

  def add
  
  end
end