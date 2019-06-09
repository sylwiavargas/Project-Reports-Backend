class User < ApplicationRecord

  belongs_to :project, optional: true
    has_secure_password

end
