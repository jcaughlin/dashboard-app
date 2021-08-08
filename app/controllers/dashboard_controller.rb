class DashboardController < ApplicationController
  def main
    @application = Application.all
  end
end