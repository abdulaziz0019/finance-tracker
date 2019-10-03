class CreateSearchResults < ActiveRecord::Migration[5.2]
  def change
    create_table :search_results do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
