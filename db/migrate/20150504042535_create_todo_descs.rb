class CreateTodoDescs < ActiveRecord::Migration
  def change
    create_table :todo_descs do |t|
      t.string :contentLstring
      t.references :todo_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
