class CreateTestModels < ActiveRecord::Migration[8.0]
  def change
    create_table :test_models do |t|
      t.timestamps
      t.string :name
    end
  end
end
