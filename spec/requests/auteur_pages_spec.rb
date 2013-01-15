require 'spec_helper'

describe "Auteur pages" do
  subject { page }

  describe "Inscrit-Toi" do
    before { visit inscription_path } 
    it { page.should have_selector('h1' ,text: 'Inscription') }
    it { page.should have_selector('title' ,text: titre_complet('Inscription'))}
  end

  

  describe "Inscription" do
    before { visit inscription_path } 

    let(:sudmit) { "Creer mon compte" }
    
    describe "Avec des informations invalide" do
      it "ne doit pas creer d'auteur" do
        expect { click_button sudmit }.not_to change(Auteur, :count)
      end

      describe "apres la petite mission" do
        before { click_button sudmit }

        it {should have_selector('title', text: titre_complet(''))}
        it {should have_content('error')}
      end
    end

    describe "Avec des informations valide" do
      before do
        fill_in "Nom", with: "von Laue"
        fill_in "Prenom", with: "Max"
      end


      it "doit creer un auteur" do
        expect { click_button sudmit }.to change(Auteur, :count).by(1)
      end
    end
  end
end