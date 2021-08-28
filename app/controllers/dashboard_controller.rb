class DashboardController < ApplicationController
  before_action :set_user, :set_user_apps
  def index
    @disabled_applications = Application.where("id NOT IN (SELECT user_applications.application_id FROM user_applications WHERE (user_applications.user_id = :user_id))", user_id: Current.user.id)
  end

  def add
    app = Application.find_by(id: params[:id])
    @user.applications << app
    redirect_to dashboard_path(@user.id), notice: "Dashboard Successfully Updated!"
  end

  def delete
    app = Application.find_by(id: params[:id])
    @user.applications.delete(app)
    
    redirect_to dashboard_path(@user.id), notice: "Dashboard Successfully Updated!"
  end

  def sort
    UserApplication.where(application_id: params[:id]).update_all(position: params[:position].to_i)
    head :ok
  end

  private

    def set_user
      @user = Current.user
    end

    def set_user_apps
      @user_active_apps = @user.applications
    end
end