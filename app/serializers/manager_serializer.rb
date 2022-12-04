class ManagerSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :projects
end
