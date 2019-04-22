class Post < ActiveRecord::Base
  include ActiveModel::Validations
  validates :summary, length: { maximum: 250 }
  validates :content, length: { minimum: 250 }
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validates :title, presence: true
  validates_with TitleValidator



end
