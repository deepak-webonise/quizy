class OpenionSerializer < ActiveModel::Serializer
  attributes :id, :title, :option_type, :user
  has_one :retrospective
end
