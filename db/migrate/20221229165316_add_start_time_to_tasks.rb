class AddStartTimeToTasks < ActiveRecord::Migration[7.0]
  def change
  	remove_column :tasks, :time_done
  	add_column :tasks, :start_time, :time
  	add_column :tasks, :end_time, :time
  end
end
