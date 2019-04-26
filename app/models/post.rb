class Post < ActiveRecord::Base
    validates :title, presence: true
    validate :title_is_clickbaity
        

    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    def title_is_clickbaity
        # binding.pry
            if (title != nil) && title.include?("Won't" || "Believe" ||  "Secret" || "Top [number]" || "Guess") 
            else
                errors.add(:title, "is not clickbaity enough")
            end
    end
end
