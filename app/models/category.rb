# == Schema Information
#
# Table name: categories
#
#  id         :bigint(8)        not null, primary key
#  category   :text
#  importance :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
  validates :category, :presence => true
  has_and_belongs_to_many :articles #find join table between categories and articles
end
