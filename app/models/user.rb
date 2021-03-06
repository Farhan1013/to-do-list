#Note that we are using Postgres and therefore ActiveRecord
#we don't define attributes inside the classes but rather in the database tables
class User < ActiveRecord::Base
   validates_uniqueness_of :email
   validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
   validates_length_of :email, maximum: 255
   validates_length_of :password, minimum: 6, maximum: 20

end