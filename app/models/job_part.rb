class JobPart < ApplicationRecord
    belongs_to :job
    belongs_to :bicycle_part
end
