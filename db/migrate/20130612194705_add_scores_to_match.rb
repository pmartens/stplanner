class AddScoresToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :homescore, :integer
    add_column :matches, :awayscore, :integer
  end
end
