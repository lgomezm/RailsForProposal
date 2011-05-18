class User < ActiveRecord::Base
  
  has_many :section_roles
  
end
