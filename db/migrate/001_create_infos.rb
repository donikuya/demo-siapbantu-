class CreateInfos < ActiveRecord::Migration
  def self.up
    create_table :infos do |t|
      t.string :subjek
      t.text :body
      t.datetime :posted_at
      t.string :author

      t.timestamps
    end
  end

  def self.down
    drop_table :infos
  end
end
