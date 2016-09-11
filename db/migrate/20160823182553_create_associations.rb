class CreateAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :associations do |t|
      t.references :term, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
