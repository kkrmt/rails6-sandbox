class CreateObject < ActiveRecord::Migration[6.0]
  def change
    create_table :objects do |t|
      t.string :title, null: false
      t.references :subject, null: false
      t.string :password_digest
      t.integer :type, null: false, limit: 2

      t.timestamps
    end
  end
end
