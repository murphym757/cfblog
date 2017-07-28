class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true, length: {maximum: 750}

#For the Paperclip gem
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url: "/assets/cfblog_icon.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
