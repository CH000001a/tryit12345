class Friend < ActiveRecord::Base
  has_many :accessors, :dependent => :destroy
end
