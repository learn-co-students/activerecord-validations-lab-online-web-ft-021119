class TitleValidator < ActiveModel::Validator

	def validate(record)
		if record.title
			title = record.title.downcase
			clickbait = ["secret", "guess", "won't believe", "top #{/\d+/}"]
			if clickbait.any?{ |clickbait| title.include? clickbait }
				true
			else
				record.errors.add(:title, "must be clickbait worthy")
			end
		else
			false
		end
	end


end
