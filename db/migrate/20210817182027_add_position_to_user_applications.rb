class AddPositionToUserApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :user_applications, :position, :integer
    user_applications.order(:updated_at).each.with_index(1) do |user_applications, index|
      user_applications.update_column :position, index
    end
  end
end
