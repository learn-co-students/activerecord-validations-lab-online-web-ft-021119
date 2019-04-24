class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validate :clickbait

  def clickbait
    if title == nil
      errors.add(:title, "not sufficiently clickbaity")
    else
      if !title.include?("Secret") && !title.include?("Won't Believe") && !title.include?("Guess") && !title.include?("Top #{(/[1..9]/)}")
        errors.add(:title, "not sufficiently clickbaity")
      end
    end
  end
end
