class CreateRetrospectives < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'hstore'
    create_table :retrospectives do |t|
      t.string :title
      t.references :project, foreign_key: true
      t.hstore :users
      t.hstore :option_type
      t.timestamps
    end
  end
end
