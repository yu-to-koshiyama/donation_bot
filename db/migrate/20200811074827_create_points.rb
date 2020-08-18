class CreatePoints < ActiveRecord::Migration[6.0]
  def change
    create_table :points do |t|
      t.string :name      ,null: false
      t.string :address   ,null: false
      t.float  :latitude  ,null: false
      t.float  :longitude ,null: false
      t.timestamps
    end
  end
end
