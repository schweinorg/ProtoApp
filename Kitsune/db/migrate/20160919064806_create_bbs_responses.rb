class CreateBbsResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :bbs_responses do |t|
      t.references :bbs_thread, foreign_key: true
      t.string :name
      t.text :message
      t.integer :fav_size

      t.timestamps
    end
  end
end
