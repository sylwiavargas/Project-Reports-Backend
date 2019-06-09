class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password_digest

  belongs_to :project
end
