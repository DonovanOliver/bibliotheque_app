require 'spec_helper'

  describe "Static Pages" do

    subject { page }

    describe "Page d'Accueil" do 

      before { visit root_path } 

        it { page.should have_selector('h1' ,text: 'Page d\'Accueil') }
        it { page.should have_selector('title' ,text: titre_complet('Accueil')) }
  end 

  describe "Aide" do 
      before { visit aide_path } 

        it { page.should have_selector('h1' ,text: 'Aide') }
        it { page.should have_selector('title' ,text: titre_complet('Aide')) }

  end

  describe "Liste Auteur" do 
      before { visit listeauteur_path } 


        it { page.should have_selector('h1' ,text: 'Liste d\'Auteur') }
        it { page.should have_selector('title' ,text: titre_complet('Liste Auteur')) }

  end

  describe "Liste Publication" do 
      before { visit listepublication_path } 


        it { page.should have_selector('h1' ,text: 'Liste des Publications') }
        it { page.should have_selector('title' ,text: titre_complet('Liste Publication')) }

  end
 
 it "doit avoir les bons liens sur la mise en page" do
    visit root_path
    click_link "Aide"
    page.should have_selector 'title', text: titre_complet('Aide')
    click_link "Accueil"
    click_link "Inscription"
    page.should have_selector 'title', text: titre_complet('Inscription')
  end
 
end
