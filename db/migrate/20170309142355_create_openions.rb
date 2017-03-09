class CreateOpenions < ActiveRecord::Migration[5.0]
  def change
    create_table :openions do |t|
      t.string :title
      t.string :option_type
      t.string :user
      t.references :retrospective, foreign_key: true
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
