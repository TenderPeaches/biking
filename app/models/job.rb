class Job < ApplicationRecord
    has_many :job_steps
    has_many :job_step_tools, through: :job_steps
    has_many :tools, through: :job_step_tools
end
