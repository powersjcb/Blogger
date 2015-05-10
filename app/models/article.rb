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

  has_many(
    :taggings,
    class_name: "Tagging",
    foreign_key: :article_id,
    primary_key: :id
  )

  has_many(
    :tags,
    through: :taggings,
    source:  :tag
  )


  def tag_list
    self.tags.join(", ")
  end

  def tag_list=(tags_string)
    tags_array = tags_string.downcase.split(", ").uniq

    self.tags = tags_array.map do |tag_name|
      Tag.find_or_create_by(name: tag_name)
    end
  end

end
