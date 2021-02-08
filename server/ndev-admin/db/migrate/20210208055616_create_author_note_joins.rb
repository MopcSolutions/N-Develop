class CreateAuthorNoteJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :author_note_join do |t|

      # FK
      t.integer "author_id"
      t.integer "node_id"

      # timestamps
      t.timestamps
    end
    add_index("author_note_join", ["node_id","author_id"])
  end
end
