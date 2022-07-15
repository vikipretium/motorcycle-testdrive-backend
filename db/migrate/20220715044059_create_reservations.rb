class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: {to_table: 'users'}
      t.references :motorcycle, null: false, foreign_key: {to_table: 'motorcycles'}
      t.string :city
      t.string :date

      t.timestamps
    end
  end
end
