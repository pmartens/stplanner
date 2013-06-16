class AddTeamBelongsToTeamGroup < ActiveRecord::Migration
  def up
    change_table :teams do |t|
      t.belongs_to :team_group
    end
  end
end
