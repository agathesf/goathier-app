class AddDurationToTasks < ActiveRecord::Migration[7.0]
  def change
  	remove_column :tasks, :start_time
  	remove_column :tasks, :end_time
  	add_column :tasks, :duration, :integer
  end
end
