class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :deadline

      t.belongs_to :manager
      t.belongs_to :developer

      t.timestamps
    end
  end
end
