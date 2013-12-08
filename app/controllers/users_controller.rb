class UsersController < ApplicationController
  def log_in
  end

  def saved_jobs
    @user = User.find(params[:id])
  end

  def save_job
    # todo: check if user has saved job already
    if user_signed_in?
      j = Job.find(params[:job_id])
      current_user.jobs << j
      render :json => {}
    end
  end

  def delete_job
    if user_signed_in?
      j = SavedJob.find(params[:saved_job_id])
      if (j.user_id == current_user.id)
        j.delete
      end
      render :json => {}
    end
  end
end
