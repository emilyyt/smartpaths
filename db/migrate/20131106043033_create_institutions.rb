class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :address
      t.string :city
      t.string :name
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
