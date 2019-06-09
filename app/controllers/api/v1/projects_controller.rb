class Api::V1::ProjectsController < ApplicationController
    before_action :find_project, only: [:update]

    def create
       @project = Project.new(project_params)
       @project.save
    end

    def new
      @project = Project.new
    end

    def index
    	@projects = Project.all
    	render json: @projects
    end

    def show
    	@project = Project.find(params[:id])
    	render json: @project
    end

    def update
      @project.update(project_params)
      if @project.save
        render json: @project, status: :accepted
      else
        render json: { errors: @project.errors.full_messages }, status: :unprocessible_entity
      end
    end

    private

    def project_params
        params.require(:project).permit(:person_one_name, :person_two_name, :person_three_name, :group_photo_url, :person_one_photo_url, :person_two_photo_url, :person_three_photo_url, :person_one_bio, :person_two_bio, :person_three_bio, :about_the_team, :how_work, :about_problem, :who_affected, :target_users, :about_solution_questions, :paragraph_one, :paragraph_two, :paragraph_three, :impact_indicators, :implementation_plan, :feedback, :results, :lessons_learned, :source_one, :source_two, :source_three, :source_four, :source_five, :project_photo_url_one, :project_photo_url_two, :project_photo_url_three)
    end

    def find_project
      @project = Project.find(params[:id])
    end
end
