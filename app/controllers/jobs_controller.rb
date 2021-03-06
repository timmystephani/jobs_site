class JobsController < ApplicationController
  def search
    @title = params[:title]
    @company = params[:company]
    @location = params[:location]

    if params[:page].nil?
      @page = 1
    else
      @page = params[:page].to_i
    end

    @jobs = Job.where(:is_active => true).order(:id).paginate(:page => @page, :per_page => 25)
    @jobs = @jobs.where('lower(title) LIKE ?', "%" + @title.downcase + "%") unless @title.blank?

  end

  def show
    @job = Job.find(params[:id])
  end
end
