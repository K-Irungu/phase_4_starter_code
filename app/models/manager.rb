class Manager < ApplicationRecord
    has_many :projects
    has_many :developers, through: :projects
end
