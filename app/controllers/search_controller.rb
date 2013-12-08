class SearchController < ApplicationController
  def index
    @companies = Company.all
  end
end
