class CreateAlternatives < ActiveRecord::Migration[7.0]
  def change
    create_table :alternatives do |t|
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
