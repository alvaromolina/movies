class CreateLibros < ActiveRecord::Migration
  def change
    create_table :libros do |t|
      t.text :name

      t.timestamps
    end
  end
end
