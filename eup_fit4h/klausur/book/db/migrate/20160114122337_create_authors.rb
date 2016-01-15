class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.text :vorname
      t.text :nachname
      t.text :beschreibung
      t.integer :anzahl

      t.timestamps null: false
    end
  end
end
