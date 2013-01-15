# == Schema Information
#
# Table name: publications
#
#  id              :integer          not null, primary key
#  titre           :string(255)
#  type            :string(255)
#  nom_publication :string(255)
#  annee           :integer
#  mois            :integer
#  pages           :integer
#  notes           :string(255)
#  resumer         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class PublicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
