# == Schema Information
#
# Table name: laboratoires
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Laboratoire < ActiveRecord::Base
  attr_accessible :nom

  validates :nom, :length => { :maximum => 40 }

  has_many :auteur
end
