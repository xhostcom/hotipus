# == Schema Information
#
# Table name: comments
#
#  id                           :uuid             not null, primary key
#  body(Comment body)           :text             default(""), not null
#  commentable_type             :string           not null
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  commentable_id               :uuid             not null
#  parent_id(Parent comment id) :integer
#  user_id                      :uuid             not null
#
# Indexes
#
#  index_comments_on_commentable  (commentable_type,commentable_id)
#  index_comments_on_parent_id    (parent_id)
#  index_comments_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
