# == Schema Information
#
# Table name: articles
#
#  id         :bigint(8)        not null, primary key
#  headline   :text
#  story      :text
#  sources    :text
#  author     :text
#  exclusive  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  has_many :likes
  has_many :images
  has_and_belongs_to_many :categories

  def thumbnail
    if images.any?
      images.first.image
    else
      "https://www.fillmurray.com/400/400"
  end
end
end
