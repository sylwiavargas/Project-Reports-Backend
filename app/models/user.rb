class User < ApplicationRecord
  
  belongs_to :project, optional: true

end
