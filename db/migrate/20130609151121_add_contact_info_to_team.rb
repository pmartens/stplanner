class AddContactInfoToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :phonenumber, :string
    add_column :teams, :email, :string
  end
end