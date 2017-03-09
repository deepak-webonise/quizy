class Project < ApplicationRecord
  has_many :retrospectives
  has_many :openions
end
