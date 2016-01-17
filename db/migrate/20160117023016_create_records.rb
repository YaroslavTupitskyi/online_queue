class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :name
      t.datetime :time_at
      t.string :phone
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
