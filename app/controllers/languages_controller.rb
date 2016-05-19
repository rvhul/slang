class LanguagesController < ApplicationController
  before_action :fetch_language , only: [:show]
  def index
    @languages = Language.all
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
  end

private
    def language_params
      params.require(:language).permit(:name, :description)
    end

    def fetch_language
      @language = Language.find(params[:id])
    end
end
