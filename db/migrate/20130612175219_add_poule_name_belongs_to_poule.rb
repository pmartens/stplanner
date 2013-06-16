class AddPouleNameBelongsToPoule < ActiveRecord::Migration
  def up
    change_table :poules do |t|
      t.belongs_to :poule_name
    end
  end
end
