class AddColumnsToVisit < ActiveRecord::Migration
  def change
    add_column :visits, :entity, :text
    add_column :visits, :city, :text
    add_column :visits, :country, :text
  end
end
