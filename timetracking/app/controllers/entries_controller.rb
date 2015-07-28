class EntriesController < ApplicationController
  def index
    @entries = Project.find(params[:id]).entries
  end
end
