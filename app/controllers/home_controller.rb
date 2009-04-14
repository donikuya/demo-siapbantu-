

class HomeController < ApplicationController
include AuthenticatedSystem


  def index
	@title = "Selamat Datang"
  end
  
  
end
