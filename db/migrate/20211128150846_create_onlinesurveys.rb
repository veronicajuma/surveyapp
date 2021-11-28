class CreateOnlinesurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :onlinesurveys do |t|
      t.text :name
      t.binary :laptop
      t.string :manufacturer

      t.timestamps
    end
  end
end
