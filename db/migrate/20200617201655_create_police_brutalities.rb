class CreatePoliceBrutalities < ActiveRecord::Migration[5.2]
  def change
    create_table :police_brutalities do |t|

      t.timestamps
    end
  end
end
