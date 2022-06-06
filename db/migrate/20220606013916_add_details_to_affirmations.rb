class AddDetailsToAffirmations < ActiveRecord::Migration[7.0]
  def change
    add_column :affirmations, :category, :string
  end
end
