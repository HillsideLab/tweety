class Comment < ApplicationRecord
    belongs_to :tweet_id
    belongs_to :user_id
end
