class AddColorSelectionToPictures < ActiveRecord::Migration[5.2]
  
	def change
    
		add_column :pictures, :color_selection, :string
  
	end

end
