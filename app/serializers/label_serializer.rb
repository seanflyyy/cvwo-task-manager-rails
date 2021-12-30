class LabelSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :color, :slug

  has_many :tasks
end
