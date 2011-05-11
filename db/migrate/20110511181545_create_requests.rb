class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :name
      t.date :start_date
      t.date :decision_date
      t.string :filename
      t.string :company
      t.text :comment
      t.string :state
      t.float :average
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
