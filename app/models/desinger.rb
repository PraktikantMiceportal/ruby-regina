class Desinger < ApplicationRecord
    has_many :posts
    def give_name
        puts name
    end
    def give_email
        puts email
    end
end
