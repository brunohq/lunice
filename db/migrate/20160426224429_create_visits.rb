class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.text :ip
      t.references :link, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
