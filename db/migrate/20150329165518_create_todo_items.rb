class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :content
      t.references :project_list, index: true

      t.timestamps
    end
  end
end
