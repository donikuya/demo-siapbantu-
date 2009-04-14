class LayananController < ApplicationController

include AuthenticatedSystem



  def index
	@title = "Layanan Kami"
  end

  def konsultasi
	@title = "Layanan Konsultasi"
  end

  def jurnal
	@title = "Layanan Jurnal"
	
  end

  def data
	@title = "Layanan Data"
  end

  def terjemahan
	@title = "Layanan Terjemahan"
  end
end
