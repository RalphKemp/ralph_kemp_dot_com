class AddColumnToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :link, :string
  end
end
