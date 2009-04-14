
class PageadminController < ApplicationController
include AuthenticatedSystem

before_filter :login_required

include AuthenticatedSystem
  def index
  end
  #---------kontak---------------------------
  def inbox
  @tiitle = "inbox"
	@kontaks = Kontak.find(:all)

  end
  
  def show_inbox
  @tiitle = "Baca Surat Masuk"
	@kontak = Kontak.find(params[:id])

    
  end
  
  
  def delete_inbox
	@kontak = Kontak.find(params[:id])
    @kontak.destroy

    respond_to do |format|
      format.html { redirect_to(:action => 'inbox') }
      format.xml  { head :ok }
    end
  end
  
  
  #---------Saran----------------------------
  def list_saran 
  end
  
  def show_saran
  end
  
  def delete_saran
  end
  
  #---------info-----------------------------
  def list_info
  end
  
  def delete_info
  end
  
  def create_info
  end
  
  def edit_info
  end
  
  def update_info
  end
  
  
  
 
end
