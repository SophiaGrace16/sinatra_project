class RenameFindablesStory < ActiveRecord::Migration[5.2]
  def change
    rename_column :stories, :findables, :story_findables
  end
end
