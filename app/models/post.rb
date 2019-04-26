class Post < ActiveRecord::Base
    validates :title, presence: true, exclusion: { in: %w("Won't Believe", "Secret", "Top [number]", or "Guess"),
    message: "%{value} is a required title bit." }
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, exclusion: { in: %w("Fiction" "Non-Fiction"),
    message: "%{value} is not a valid category option" }
end
