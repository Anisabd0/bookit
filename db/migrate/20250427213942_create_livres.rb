class CreateLivres < ActiveRecord::Migration[8.0]
  def change
    create_table :livres do |t|
      t.string :titre
      t.string :auteur
      t.string :resume
      t.date :date

      t.timestamps
    end
  end
end
