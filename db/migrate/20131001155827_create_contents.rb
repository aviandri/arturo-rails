class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :asset
      t.string :type

      t.timestamps
    end
  end
end
