class SessionController < ApplicationController
  def new
  end
  def create 
  	utilisateur = Utilisateur.find_by(email: params[:session] [:email].downcase)
  	if utilisateur && utilisateur.authenticate(params[:session] [:password])
      session[:utilisateur_id] = utilisateur.id
  		log_in utilisateur
  		redirest_to utilisateur
  	else
  		flash[:danger] = 'combinaison Email/ Mot de passe invalide'
render 'new'
end
  end 
  def connexion 
    utilisateur = Utilisateur.find_by(email: params[:session] [:email].downcase)
    if utilisateur && utilisateur.authenticate(params[:session] [:password])
            session[:utilisateur_id] = utilisateur.id
      log_in utilisateur
      redirest_to utilisateur
    else
      flash[:danger] = 'combinaison Email/ Mot de passe invalide'
render 'new'
end
  end 
 
    protect_from_forgery with: :exception

end