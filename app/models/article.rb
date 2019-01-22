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
  has_many :likes, :dependent => :destroy
  has_many :images, :dependent => :destroy
  has_and_belongs_to_many :categories

  def thumbnail
    if images.any?
      images.first.image
    else
      'https://picsum.photos/g/200/200'
  end
end
end
