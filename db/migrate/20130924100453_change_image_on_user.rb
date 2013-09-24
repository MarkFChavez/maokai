class ChangeImageOnUser < ActiveRecord::Migration
  def up
  	change_column :users, :image, :text
  end

  def down
  	change_column :users, :image, :string
  end
end
