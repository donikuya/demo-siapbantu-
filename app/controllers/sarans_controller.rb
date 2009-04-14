class SaransController < ApplicationController

include AuthenticatedSystem
  # GET /sarans
  # GET /sarans.xml
  
  before_filter :login_required,:except=>[:index,:new,:create]
  
  def index
  @sarans = Saran.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sarans }
    end
     
  end

  # GET /sarans/1
  # GET /sarans/1.xml
  def show
    @saran = Saran.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @saran }
    end
  end

  # GET /sarans/new
  # GET /sarans/new.xml
  def new
  
  @saran = Saran.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @saran }
    end
  
   
  end

  
  def create
    @saran = Saran.new(params[:saran])

    respond_to do |format|
      if @saran.save
        flash[:notice] = 'Saran was successfully created.'
        format.html { redirect_to(:action => 'index') }
        format.xml  { render :xml => @saran, :status => :created, :location => @saran }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @saran.errors, :status => :unprocessable_entity }
      end
    end
  end

  
  
  def destroy
    @saran = Saran.find(params[:id])
    @saran.destroy

    respond_to do |format|
      format.html { redirect_to(sarans_url) }
      format.xml  { head :ok }
    end
  end
end
