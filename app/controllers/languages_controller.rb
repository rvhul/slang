class LanguagesController < ApplicationController
  before_action :fetch_language , only: [:show]
  def index
    @languages = Language.all   
    @pending_mentor_coaching_requests = current_user.pending_mentor_coachings
  end

  def new
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      redirect_to languages_path
    else
      render :new
    end
  end

  def show
    @coaching = Coaching.new
    @pending_pupil_coaching_requests = current_user.pending_pupil_coachings
    @accepted_pupil_coaching_requests = current_user.accepted_pupil_coachings

    @pending_mentor_coaching_requests = current_user.pending_mentor_coachings
    @accepted_mentor_coaching_requests = current_user.accepted_mentor_coachings


  end

private
    def language_params
      params.require(:language).permit(:name, :description)
    end

    def fetch_language
      @language = Language.find(params[:id])
    end
end
