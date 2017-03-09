class Retrospective < ApplicationRecord
  belongs_to :project
  has_many :openions
end
