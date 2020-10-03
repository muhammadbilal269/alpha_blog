class Article < ActiveRecord::Base
belongs_to :user
validates :TITLE, presence: true, length: {minimum: 4, maximum: 100}
validates :DESCRIPTION, presence: true, length: {minimum: 4, maximum: 300}
validates :user_id, presence: true
end