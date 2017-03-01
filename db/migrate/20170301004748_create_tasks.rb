class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :link
      t.belongs_to :certification, foreign_key: true

      t.timestamps
    end
  end
end
