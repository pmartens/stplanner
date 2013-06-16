class CreatePouleNames < ActiveRecord::Migration
  def change
    create_table :poule_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
