class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.references :user, null: false, foreign_key: true
      # t.references :friend, references: :users, foreign_key: { to_table: :users }  #can also be written as 
      t.references :friend, foreign_key: { to_table: :users } #cleaner way mentioned in documentation
      t.timestamps
    end
  end
end
