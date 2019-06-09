class Project < ApplicationRecord

  belongs_to :ngo
  belongs_to :user, optional: true
end
