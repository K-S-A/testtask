class TodoItem < ActiveRecord::Base
  belongs_to :project_list

  def completed?
    !completed_at.blank?
  end
end
