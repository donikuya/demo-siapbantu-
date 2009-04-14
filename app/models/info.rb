class Info < ActiveRecord::Base

validates_presence_of :subjek, :message => "Tidak Boleh Kosong di kolom subjek"
  
  validates_presence_of :body, :message => "Tidak Boleh Kosong di kolom subjek"
  validates_presence_of :author, :message => "Tidak Boleh Kosong di kolom isi"
end
