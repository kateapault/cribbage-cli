class ChangeAutocountToInt < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :autocount, :string
  end
end
