# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ActiveRecord::Base
  has_many(
    :comments,
    class_name: "Comment",
    foreign_key: :article_id,
    primary_key: :id
  )
end
