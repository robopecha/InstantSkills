class AddColumnToSkills < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :img_url, :text
  end
end
