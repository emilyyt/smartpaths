class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :type
      t.integer :vote

      t.timestamps
    end
  end
end
