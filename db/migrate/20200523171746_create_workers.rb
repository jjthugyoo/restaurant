class CreateWorkers < ActiveRecord::Migration[6.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :gender
      t.string :role
      t.float :wage

      t.timestamps
    end
  end
end
