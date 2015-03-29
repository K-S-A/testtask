class CreateProjectLists < ActiveRecord::Migration
  def change
    create_table :project_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
