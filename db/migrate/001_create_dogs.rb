class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.integer :age
    end
  end
end