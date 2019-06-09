class CreateNgos < ActiveRecord::Migration[5.2]
  def change
    create_table :ngos do |t|
      t.string :name_ngo
      t.string :photo_url_ngo
      t.string :logo_url_ngo
      t.string :description_ngo
      t.string :challenge_ngo
      t.string :mentor_one_name
      t.string :mentor_one_bio
      t.string :mentor_two_ngo
      t.string :mentor_two_bio
      t.string :ngo_website_url
      t.timestamps
    end
  end
end
