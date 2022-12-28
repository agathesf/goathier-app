class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :price
      t.integer :time_target
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
