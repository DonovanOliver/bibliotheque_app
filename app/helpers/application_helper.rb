module ApplicationHelper
  
  #fonction qui donne le titre complet
  def titre_complet(page_titre)
    base_titre = "Ruby on Rails Tutorial Bibliotheque App"
    if page_titre.empty?
      base_titre
    else
      "#{base_titre} | #{page_titre}"
    end
  end
end
