class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :assigned
      t.text :content
      t.date :due_date
      t.references :tag
      t.boolean :status
      t.references :creator
      t.integer :time

      t.timestamps
    end
  end
end
