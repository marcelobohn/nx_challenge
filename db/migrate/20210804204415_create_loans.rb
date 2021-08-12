class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.string :name
      t.float :value
      t.float :tax

      t.timestamps
    end
  end
end
