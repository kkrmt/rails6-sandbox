class CreateTaskObject < ActiveRecord::Migration[6.0]
  def change
    create_table :task_objects do |t|
      t.string :title, null: false
      t.references :task_subject, null: false
      t.integer :type, null: false, limit: 2

      t.timestamps
    end
  end
end
