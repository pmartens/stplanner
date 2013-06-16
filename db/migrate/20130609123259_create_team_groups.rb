class CreateTeamGroups < ActiveRecord::Migration
  def change
    create_table :team_groups do |t|
      t.string :name
      t.string :namecode, :limit => 1
      t.integer :activated

      t.timestamps
    end
  end
end
