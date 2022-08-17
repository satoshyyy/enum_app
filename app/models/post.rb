class Post < ApplicationRecord
  validates :genre, presence: true
  validates :content, presence: true

  # ***** 以下を追加 *****
  enum genre: {
    others: 0,
    html: 1,
    css: 2,
    js: 3,
    ruby: 4,
    rails: 5
  }
  # ***** 以上を追加 *****
end
