class DropTables < ActiveRecord::Migration[6.0]
  def change
    drop_table :users
    drop_table :active_admin_comments
  end
end
