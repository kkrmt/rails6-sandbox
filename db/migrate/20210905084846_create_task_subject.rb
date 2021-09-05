class CreateTaskSubject < ActiveRecord::Migration[6.0]
  def change
    create_table :task_subjects do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest
      t.integer :type, null: false, limit: 2

      t.timestamps
    end
  end
end
