class TodoItem < ActiveRecord::Base
  belongs_to :project_list
end
