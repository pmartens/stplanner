class AddBelongsToMatch < ActiveRecord::Migration
  change_table :matches do |t|
    t.belongs_to :referee
    t.belongs_to :soccerfield
  end
end
