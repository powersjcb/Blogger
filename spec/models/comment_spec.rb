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

require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
