class CreateSectionRoles < ActiveRecord::Migration
  def self.up
    create_table :section_roles do |t|
      t.integer :user_id
      t.integer :section_id
      t.integer :request_id

      t.timestamps
    end
  end

  def self.down
    drop_table :section_roles
  end
end
