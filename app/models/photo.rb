class Photo < ActiveRecord::Base
    validates :title, presence: true
    validates :url, presence: true
    validates :author, presence: true
end
