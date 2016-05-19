class CoachingsController < ApplicationController
  before_action: :fetch_language
  def create
  end

private
    def fetch_language
      @language = Language.find(params[:language_id])
    end
end
