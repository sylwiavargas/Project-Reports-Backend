class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :person_one_name
      t.string :person_two_name
      t.string :person_three_name
      t.string :group_photo_url
      t.string :person_one_photo_url
      t.string :person_two_photo_url
      t.string :person_three_photo_url
      t.string :person_one_bio
      t.string :person_two_bio
      t.string :person_three_bio
      t.string :about_the_team
      t.string :how_work
      t.string :about_problem
      t.string :who_affected
      t.string :target_users
      t.string :about_solution_questions
      t.string :paragraph_one
      t.string :paragraph_two
      t.string :paragraph_three
      t.string :impact_indicators
      t.string :implementation_plan
      t.string :feedback
      t.string :results
      t.string :lessons_learned
      t.string :source_one
      t.string :source_two
      t.string :source_three
      t.string :source_four
      t.string :source_five
      t.string :project_photo_url_one
      t.string :project_photo_url_two
      t.string :project_photo_url_three
      t.references :user, foreign_key: true, index: true
      t.references :ngo, foreign_key: true, index: true
      t.timestamps
    end
  end
end
