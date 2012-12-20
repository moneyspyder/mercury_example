class CreateTextChunks < ActiveRecord::Migration
  def change
    create_table :text_chunks do |t|
      t.datetime "created_on",                                 :null => false
      t.datetime "updated_on",                                 :null => false
      t.integer  "lock_version",                :default => 0, :null => false
      t.integer  "site_id"
      t.binary   "name",         :limit => 255,                :null => false
      t.string   "description"
      t.text     "text_chunk"
    end
  end
end
