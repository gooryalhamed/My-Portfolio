class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :image
      t.integer :stars
      t.integer :views
      t.string :source
      t.string :link

      t.timestamps
    end
  end
end
