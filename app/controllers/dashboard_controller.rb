class DashboardController < ApplicationController
  def main
   
    @user_active_apps = Current.user.applications

    # TABLE NAMES
    # applications
    # users
    # user_applications COLUMN NAMES; user_id, application_id

    @disabled_appications = Application.where("id NOT IN (SELECT user_applications.application_id FROM user_applications WHERE (user_applications.user_id = :user_id))", user_id: Current.user.id)
  end

  def add
    user = Current.user
    app = Application.find_by(id: params[:id])
    user.applications << app
    redirect_to dashboard_path(user.id), notice: "Dashboard Successfully Updated!"
  end

  def delete
    user = Current.user
    app = Application.find_by(id: params[:id])
    user.applications.delete(app)
    
    redirect_to dashboard_path(user.id), notice: "Dashboard Successfully Updated!"
  end
end