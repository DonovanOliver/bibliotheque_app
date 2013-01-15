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

require 'spec_helper'

describe Auteur do
  before { @auteur =Auteur.new(nom: "Einstein", prenom: "Albert")}

  subject { @auteur }

  it { should respond_to(:nom)}
  it { should respond_to(:prenom)}

  it { should be_valid}

  describe "Quand le nom n'est pas present" do
  	before { @auteur.nom = "" }
    it { should_not be_valid }
  end

  describe "Quand le prenom n'est pas present" do
  	before { @auteur.prenom = "" }
    it { should_not be_valid }
  end

  describe "Quand le nom est trop long" do
  	before { @auteur.prenom = "a"*51 }
    it { should_not be_valid }
  end

  describe "Quand le prenom est trop long" do
  	before { @auteur.prenom = "a"*51 }
    it { should_not be_valid }
  end
end

