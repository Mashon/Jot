class AddColumnToLinks < ActiveRecord::Migration
  def change
    add_column :links, :url, :url_field
  end
end
