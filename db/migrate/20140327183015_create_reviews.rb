class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :texto
      t.references :movie
      t.timestamps
    end
  end
end
