class RetrospectiveSerializer < ActiveModel::Serializer
  attributes :id, :title, :users, :option_type
  has_one :project
end
