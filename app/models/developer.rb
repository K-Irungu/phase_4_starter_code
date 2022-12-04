class Developer < ApplicationRecord
    has_many :projects
    has_many :managers, through: :projects
end
