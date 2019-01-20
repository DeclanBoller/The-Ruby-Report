# == Schema Information
#
# Table name: images
#
#  id         :bigint(8)        not null, primary key
#  image      :text
#  caption    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ApplicationRecord
  belongs_to :article, :optional => true
end
