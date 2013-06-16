class AddTeamNumberToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :teamnumber, :integer
  end
end
