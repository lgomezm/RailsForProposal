class AddCommentToSectionRoles < ActiveRecord::Migration
  def self.up
    add_column :section_roles, :comment, :text
  end

  def self.down
    remove_column :section_roles, :comment
  end
end
