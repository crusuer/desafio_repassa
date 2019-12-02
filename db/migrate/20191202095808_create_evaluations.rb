class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.references :rated, null: false
      t.references :rater, null: false
      t.integer :helpful
      t.integer :focused
      t.integer :responsible
      t.integer :creative
      t.integer :leadership

      t.timestamps
    end
  end
end
