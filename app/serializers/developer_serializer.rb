class DeveloperSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :projects, serializer: DeveloperProjectsSerializer
end
