class CreateSarans < ActiveRecord::Migration
  def self.up
    create_table :sarans do |t|
      t.string :nama
      t.string :email
      t.string :subjek
      t.text :komentar
      t.datetime :posted_at

      t.timestamps
    end
  end

  def self.down
    drop_table :sarans
  end
end
