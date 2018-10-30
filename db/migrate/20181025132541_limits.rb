class Limits < ActiveRecord::Migration[5.2]
  def change
  	change_column :gossips, :content, :string, :limit => 40000
  end
end
