class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :text
      t.integer :project_id
      t.boolean :isCompleted, default: false

      t.timestamps
    end
  end
end
