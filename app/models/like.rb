# == Schema Information
#
# Table name: likes
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  article_id :integer
#  liked      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :article, :optional => true
end
