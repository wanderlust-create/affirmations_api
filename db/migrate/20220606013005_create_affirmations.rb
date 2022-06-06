class CreateAffirmations < ActiveRecord::Migration[7.0]
  def change
    create_table :affirmations do |t|
      t.text :description

      t.timestamps
    end
  end
end
