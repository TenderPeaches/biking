class Job < ApplicationRecord
    has_many :job_steps
    has_many :job_step_tools, through: :job_steps
    has_many :tools, through: :job_step_tools
    has_many :job_parts
    has_many :bicycle_part_types, through: :job_parts
end
