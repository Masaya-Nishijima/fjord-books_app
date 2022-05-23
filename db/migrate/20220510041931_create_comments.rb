class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :send_to, polymorphic: true, null: false
      t.text :comment

      t.timestamps
    end
  end
end
