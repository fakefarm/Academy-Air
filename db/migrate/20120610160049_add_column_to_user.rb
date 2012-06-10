class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :miles, :integer
  end
end
