class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :difficulty
      t.integer :autocount
      t.integer :card_format
    end
  end
end
