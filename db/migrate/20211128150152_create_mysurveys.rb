class CreateMysurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :mysurveys do |t|
      t.text :name
      t.binary :laptop
      t.string :type

      t.timestamps
    end
  end
end
