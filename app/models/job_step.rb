class JobStep < ApplicationRecord
  belongs_to :job
  has_many :job_step_considerations
  has_many :job_step_tools
end
