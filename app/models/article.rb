class Article < ActiveRecord::Base
validates :TITLE, presence: true, length: {minimum: 4, maximum: 100}
validates :DESCRIPTION, presence: true, length: {minimum: 4, maximum: 300}

end