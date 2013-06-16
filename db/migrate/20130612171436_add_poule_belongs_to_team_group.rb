class AddPouleBelongsToTeamGroup < ActiveRecord::Migration
  def up
    change_table :poules do |t|
      t.belongs_to :team_group
    end
  end
end
