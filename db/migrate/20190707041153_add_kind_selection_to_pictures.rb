class AddKindSelectionToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :kind_selection, :string
  end
end
