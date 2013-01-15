module AuteursHelper
	def gravatar_for(auteur)
    gravatar_id = Digest::MD5::hexdigest(auteur.prenom.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: auteur.nom, class: "gravatar")
  end
end
