require 'spec_helper'

describe ApplicationHelper do

	describe "titre_complet" do

		it "doit avoir le titre de la page" do
			titre_complet('foo').should =~ /foo/
		end

		it "doit avoir le titre de la base" do
			titre_complet('foo').should =~ /^Ruby on Rails Tutorial Bibliotheque App/
		end

		it "ne doit pas avoir une bar dans la page d'accueil" do
			titre_complet('').should_not =~ /\|/

		end
	end
end

