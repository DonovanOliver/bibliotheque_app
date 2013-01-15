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

require 'test_helper'

class AuteurTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
