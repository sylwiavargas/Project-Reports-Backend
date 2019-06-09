class NgoSerializer < ActiveModel::Serializer
  attributes :id, :person_one_name, :person_two_name, :person_three_name, :group_photo_url, :person_one_photo_url, :person_two_photo_url, :person_three_photo_url, :person_one_bio, :person_two_bio, :person_three_bio, :about_the_team, :how_work, :about_problem, :who_affected, :target_users, :about_solution_questions, :paragraph_one, :paragraph_two, :paragraph_three, :impact_indicators, :implementation_plan, :feedback, :results, :lessons_learned, :source_one, :source_two, :source_three, :source_four, :source_five, :project_photo_url_one, :project_photo_url_two, :project_photo_url_three

  has_many :projects
  has_many :users, :through => :projects
end
