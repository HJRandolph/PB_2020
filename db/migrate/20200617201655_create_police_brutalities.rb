class CreatePoliceBrutalities < ActiveRecord::Migration[5.2]
  def change
    create_table :police_brutalities do |t|
	  t.integer :pb_id
	  t.string :api_id
	  t.string :state
	  t.string :city
	  t.string :title
      t.timestamps 
    end
  end
end
