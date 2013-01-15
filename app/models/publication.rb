class Publication < ActiveRecord::Base
  attr_accessible :annee, :genre, :mois, :nom_publication, :notes, :pages, :resumer, :titre, :id_auteur

  validates :titre, presence: true, length: {maximum: 50}
  validates :genre, presence: true, length: {maximum: 50}
  validates :nom_publication, presence: true, length: {maximum: 50}
  validates :annee, presence: true
  validates :mois, presence: true
  validates :pages, presence: true
  validates :notes, presence: true, length: {maximum: 100}
  validates :resumer, presence: true, length: {maximum: 300}
  validates :id_auteur, presence: true

  belongs_to :auteur
end
