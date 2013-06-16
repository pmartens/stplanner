class AddTeamBelongsToPoule < ActiveRecord::Migration
  def up
    change_table :teams do |t|
      t.belongs_to :poule
    end
  end
end