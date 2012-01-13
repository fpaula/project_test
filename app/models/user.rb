class User < ActiveRecord::Base
  include Clearance::User
  validates :name, :sex, :email, :presence => true
  validates :terms_of_service_accepted, :acceptance => true
end
