class AddContactNameToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :contactname, :string
  end
end
