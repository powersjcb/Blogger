# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  author_name :string           not null
#  body        :text             not null
#  article_id  :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to(
    :article,
    class_name: "Article",
    foreign_key: :article_id,
    primary_key: :id
  )
end
