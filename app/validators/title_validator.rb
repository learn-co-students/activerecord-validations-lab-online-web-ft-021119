class TitleValidator < ActiveModel::Validator
    def validate(record)
       click_bait_titles = %w(
          won't believe
          secret
          guess
       )
 
       i = 0
       if !!record.title
          x = record.title.downcase
          click_bait_titles.each do |t|
             i += 1 if x.include?(t) || x.match(/top \d+/)
          end
       end
 
       unless i > 1
          record.errors[:title] << "Not click-baity enough!"
       end
    end
 end