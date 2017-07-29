class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  def upvote
    votes.create
  end

  def downvote
    if votes.count > 1
    votes.first.destroy
    end
  end
end
