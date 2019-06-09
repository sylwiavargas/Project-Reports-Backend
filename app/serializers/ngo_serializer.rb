class NgoSerializer < ActiveModel::Serializer
  attributes :id, :name_ngo, :photo_url_ngo, :logo_url_ngo, :description_ngo, :challenge_ngo, :mentor_one_name, :mentor_one_bio, :mentor_two_ngo, :mentor_two_bio, :ngo_website_ur

  belongs_to :project
end
