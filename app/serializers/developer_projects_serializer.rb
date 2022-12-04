class DeveloperProjectsSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :deadline, :created_at, :updated_at
end
