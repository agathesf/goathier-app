class AddStatusToProjects < ActiveRecord::Migration[7.0]
  def change
  	remove_column :projects, :status
    add_column :projects, :status, :integer
  end
end
