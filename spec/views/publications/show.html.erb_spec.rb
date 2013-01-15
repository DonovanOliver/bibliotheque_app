require 'spec_helper'

describe "publications/show" do
  before(:each) do
    @publication = assign(:publication, stub_model(Publication,
      :titre => "Titre",
      :genre => "Genre",
      :nom_publication => "Nom Publication",
      :annee => 1,
      :mois => 2,
      :pages => 3,
      :notes => "Notes",
      :resumer => "Resumer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Titre/)
    rendered.should match(/Genre/)
    rendered.should match(/Nom Publication/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Notes/)
    rendered.should match(/Resumer/)
  end
end
