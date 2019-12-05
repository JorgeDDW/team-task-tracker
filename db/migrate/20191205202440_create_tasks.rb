class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.reference :assigned
      t.text :content
      t.date :due_date
      t.reference :tag
      t.boolean :status
      t.reference :creator
      t.integer :time

      t.timestamps
    end
  end
end
