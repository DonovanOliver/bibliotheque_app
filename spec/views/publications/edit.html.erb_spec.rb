require 'spec_helper'

describe "publications/edit" do
  before(:each) do
    @publication = assign(:publication, stub_model(Publication,
      :titre => "MyString",
      :genre => "MyString",
      :nom_publication => "MyString",
      :annee => 1,
      :mois => 1,
      :pages => 1,
      :notes => "MyString",
      :resumer => "MyString"
    ))
  end

  it "renders the edit publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => publications_path(@publication), :method => "post" do
      assert_select "input#publication_titre", :name => "publication[titre]"
      assert_select "input#publication_genre", :name => "publication[genre]"
      assert_select "input#publication_nom_publication", :name => "publication[nom_publication]"
      assert_select "input#publication_annee", :name => "publication[annee]"
      assert_select "input#publication_mois", :name => "publication[mois]"
      assert_select "input#publication_pages", :name => "publication[pages]"
      assert_select "input#publication_notes", :name => "publication[notes]"
      assert_select "input#publication_resumer", :name => "publication[resumer]"
    end
  end
end
