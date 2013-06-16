class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.time :start

      t.timestamps
    end
  end
end
