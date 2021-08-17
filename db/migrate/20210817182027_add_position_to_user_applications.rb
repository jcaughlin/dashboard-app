class AddPositionToUserApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :user_applications, :position, :integer
  end
end
