class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, presence: true, length: {minimum: 2, maximum: 400}

  after_create_commit { CommentBroadcastJob.perform_later(self) }
end
