class KontaksController < ApplicationController
include AuthenticatedSystem
  # GET /kontaks
  # GET /kontaks.xml
  def index
	@kontak = Kontak.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @kontak }
    end
    
  end

  def create
    @kontak = Kontak.new(params[:kontak])

    respond_to do |format|
      if @kontak.save
        flash[:notice] = 'Pesan telah terkirim.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { render :xml => @kontak, :status => :created, :location => @kontak }
      else
		flash[:notice] = 'Isi form dengan benar.'
        format.html { render :action => "index" }
        format.xml  { render :xml => @kontak.errors, :status => :unprocessable_entity }
      end
    end
  end

  
end
