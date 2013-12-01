class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.references :user, index: true
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
