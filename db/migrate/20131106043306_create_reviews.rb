class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :program_id
      t.integer :rating
      t.string :text
      t.integer :user_id

      t.timestamps
    end
  end
end
