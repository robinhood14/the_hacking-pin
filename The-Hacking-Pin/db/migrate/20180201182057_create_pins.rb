class CreatePins < ActiveRecord::Migration[5.1]
  def change
    create_table :pins do |t|
      t.string :url
      t.integer :user_id
 	  t.references :user, foreign_key: true #on créé une colonne avec une foreign_key qui permet de s'assurer que chaque Pin est créé par un seul user
      t.timestamps
    end
  end
end
