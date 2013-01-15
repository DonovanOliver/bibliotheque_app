require 'spec_helper'

describe "publications/index" do
  before(:each) do
    assign(:publications, [
      stub_model(Publication,
        :titre => "Titre",
        :genre => "Genre",
        :nom_publication => "Nom Publication",
        :annee => 1,
        :mois => 2,
        :pages => 3,
        :notes => "Notes",
        :resumer => "Resumer"
      ),
      stub_model(Publication,
        :titre => "Titre",
        :genre => "Genre",
        :nom_publication => "Nom Publication",
        :annee => 1,
        :mois => 2,
        :pages => 3,
        :notes => "Notes",
        :resumer => "Resumer"
      )
    ])
  end

  it "renders a list of publications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titre".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Nom Publication".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Resumer".to_s, :count => 2
  end
end
