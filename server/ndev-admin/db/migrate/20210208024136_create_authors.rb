class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      
      # ID is automatically created

      t.string "login", :null => false, :limit => 255
      t.string "name", :null => false, :limit => 255
      t.string "password", :null => false, :limit => 50
      t.boolean "active", :default => true

      # important (created_at, updated_at)
      t.timestamps
    end
  end
end
