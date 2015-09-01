class AddColumnToJots < ActiveRecord::Migration
  def change
    add_column :jots, :title, :string
    add_column :jots, :body, :textarea
  end
end
