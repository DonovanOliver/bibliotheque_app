# == Schema Information
#
# Table name: auteurs
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  prenom     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Auteur < ActiveRecord::Base
  attr_accessible :nom, :prenom

  validates :nom, presence: true, length: {maximum: 50}
  validates :prenom, presence: true, length: {maximum: 50}

  has_many :publication,:dependent => :destroy
end
