class CreateFumbls < ActiveRecord::Migration
  def change
    create_table :fumbls do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
