class AddClientToPet < ActiveRecord::Migration[5.2]
  def change
    add_reference :pets, :client, null: true, foreign_key: true
  end
end
