class User < ApplicationRecord
    has_many :tweets, dependent: :destroy #ユーザを消すとツイートも消える
    has_many :likes, dependent: :destroy #ユーザを消すといいねも消える
    has_many :like_tweets, source: :tweet, through: :likes
    has_secure_password
end
