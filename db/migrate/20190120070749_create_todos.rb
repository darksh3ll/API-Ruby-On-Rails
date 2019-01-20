class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :todo
      t.integer :todo_id

      t.timestamps null: false
    end
  end
end
