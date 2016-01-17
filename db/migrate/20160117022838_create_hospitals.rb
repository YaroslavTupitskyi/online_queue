class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :city
      t.string :address

      t.timestamps null: false
    end
  end
end
