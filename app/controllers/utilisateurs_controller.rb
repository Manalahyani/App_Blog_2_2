class UtilisateursController < ApplicationController
	before_action :set_utilisateur, only: [:show, :edit, :update, :destroy]
  def index
    @utilisateur = Utilisateur.all
  end
  def nouveau
  	@utilisateur = Utilisateur.new
  end
  def connexion 
  	@utilisateur = Utilisateur.find(params[:email])
  end
  def show 
  	@utilisateur = Utilisateur.find(params[:id])

  end
  def edit
  end
def create  
	  	@utilisateur = Utilisateur.new(utilisateur_params)
	  	if @utilisateur.save
	  		flash[:success] = "Bienvenue!"
	  		redirect_to @utilisateur
	  	else 
	  		render 'nouveau'
	  	end
	  end
	  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utilisateur
      @utilisateur = Utilisateur.find(params[:id])
    end
	  private
	  def utilisateur_params 
	  	params.require(:utilisateur).permit(:nom, :email, :password, :password_confirmation)
	  	end
	  	
	  
	  
	  end
