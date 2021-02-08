class CreateNoteStoryJoin < ActiveRecord::Migration[6.1]
  def change
    create_table :note_story_join, :id => false do |t|

      t.integer "node_id"
      t.integer "story_id"

      t.timestamps
    end
    add_index("note_story_join", ["node_id","story_id"])
  end
end
