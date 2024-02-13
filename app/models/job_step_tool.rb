class JobStepTool < ApplicationRecord
  belongs_to :tool
  belongs_to :job_step
end
