class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.date :birth_date
      t.string :city
      t.integer :books_number

      t.timestamps
    end
  end
end
