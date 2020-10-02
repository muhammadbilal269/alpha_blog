class User <ActiveRecord::Base
validates :username, presence: true,
 uniqueness:{case_sensitive:false } ,
  length: {minimum: 3 , maximum: 25}
  VALID_EMAIL_REJEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, 
  length: {maximum:100},
  uniqueness: {case_sensitive: false},
  format: {with: VALID_EMAIL_REJEX}
end