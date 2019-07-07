class CreateFigures < ActiveRecord::Migration[5.2]
  
def change
    
	create_table :figures do |t|

	      t.string :name

	      t.text :description

	      t.has_many :pictures , index:true
	
      t.timestamps	 
   	end
end

end
