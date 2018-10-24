class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :url
      # permet de créer la colonne user_id dans la table pins 
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
