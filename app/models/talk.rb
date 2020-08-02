class Talk < ApplicationRecord
    validates :talk, presence: true, length: {minimum:1, maximum:140}
end
