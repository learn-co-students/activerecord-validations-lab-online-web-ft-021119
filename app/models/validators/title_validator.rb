class TitleValidator < ActiveModel::TitleValidator

      def validate(record)
        unless record.title && record.title.include?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
        record.errors[:title] << "Need a click-bait title!"
      end
    end
