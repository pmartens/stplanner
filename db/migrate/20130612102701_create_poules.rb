class CreatePoules < ActiveRecord::Migration
  def change
    create_table :poules do |t|
      t.timestamps
    end
  end
end
