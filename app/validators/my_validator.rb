class MyValidator < ActiveModel::Validator
  def validate(post)
    #binding.pry
    return false if post.title == nil
    if post.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
      #puts "It came out true"
      return true
    else
      #puts "It came out false"
      return false
    end
  end
end
