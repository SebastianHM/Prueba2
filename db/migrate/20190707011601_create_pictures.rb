class CreatePictures < ActiveRecord::Migration[5.2]
  
	def change
    
		create_table :pictures do |t|
      
			t.string :name
      
			t.string :kind
      
			t.integer :sides
      
			t.text :description
      
			t.string :color


			t.belongs_to : figure      
			t.timestamps
    
		end
  
	end

end
