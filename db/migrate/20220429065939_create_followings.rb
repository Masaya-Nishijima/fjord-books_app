class CreateFollowings < ActiveRecord::Migration[6.1]
  def change
    create_table :followings do |t|
      t.string :from_user
      t.string :to_user

      t.timestamps
    end
  end
end
