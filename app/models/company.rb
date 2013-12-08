class Company < ActiveRecord::Base
  has_many :jobs
  attr_accessible :address, :city, :description, :industry, :is_active, :jobs_url, :logo, :name, :phone, :size, :state_code, :website, :zip
end
