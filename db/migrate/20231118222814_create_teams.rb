class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.date :registered_on
      t.string :captain
      t.boolean :paid

      t.timestamps
    end
  end
end
