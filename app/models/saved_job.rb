class SavedJob < ActiveRecord::Base
  belongs_to :user
  belongs_to :job
  attr_accessible :is_active, :references, :references
end
