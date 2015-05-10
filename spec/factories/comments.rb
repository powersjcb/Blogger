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

FactoryGirl.define do
  factory :comment do
    author_name ""
body "MyText"
article nil
  end

end
