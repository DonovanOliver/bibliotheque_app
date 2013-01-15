class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :titre
      t.string :genre
      t.string :nom_publication
      t.integer :annee
      t.integer :mois
      t.integer :pages
      t.string :notes
      t.string :resumer

      t.timestamps
    end
  end
end
