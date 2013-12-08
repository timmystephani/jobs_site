class Job < ActiveRecord::Base
  belongs_to :company
  has_many :saved_jobs
  has_many :users, :through => :saved_jobs
  
  attr_accessible :apply_url, :body_desktop, :body_mobile, :city, :degree_min, :exp, :exp_min, :is_active, :is_full_time, :is_internship, :salary_max, :salary_min, :state_code, :title
end
