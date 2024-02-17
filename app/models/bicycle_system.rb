class BicycleSystem < ApplicationRecord
    has_many :bicycle_parts

    def jobs
        job_parts = JobPart.where(part_id: bicycle_parts.map {|part| part.id})
        jobs = job_parts.jobs.distinct
    end
end
