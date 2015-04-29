class CreateDirectorios < ActiveRecord::Migration
  def change
    create_table :directorios do |t|
      t.references :user, index: true
      t.string :nombre
      t.string :descripcion
      t.integer :area
      t.integer :telefono
      t.integer :celular
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :region
      t.string :categoria
      t.string :subcategoria
      t.string :estado

      t.timestamps null: false
    end
    add_foreign_key :directorios, :users
  end
end
