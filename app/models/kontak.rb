class Kontak < ActiveRecord::Base

validates_presence_of :nama, :message => "Tidak Boleh Kosong di kolom nama"
  validates_presence_of :email, :message => "Tidak Boleh Kosong di kolom email"
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates_presence_of :subjek, :message => "Tidak Boleh Kosong di kolom subject"
  validates_presence_of :pesan, :message => "Tidak Boleh Kosong di kolom isi"
end
