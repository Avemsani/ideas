class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :url
      t.string :caption
      t.string :title

      t.timestamps
    end
  end
end
