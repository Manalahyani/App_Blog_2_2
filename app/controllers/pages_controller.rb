class PagesController < ApplicationController
  def home
  	@titre = "Home"
  end

  def aide
  	@titre = "Aide"
  end
end
