class Talk < ApplicationRecord
    validates :talk, length: {minimum:1, maximum:140}
end
