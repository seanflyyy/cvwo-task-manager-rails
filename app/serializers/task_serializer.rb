class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :completed, :due, :label_id
end
