class CreateSoccerfields < ActiveRecord::Migration
  def change
    create_table :soccerfields do |t|
      t.string :name
      t.string :fieldcode
      t.string :description
      t.integer :present

      t.timestamps
    end
  end
end
