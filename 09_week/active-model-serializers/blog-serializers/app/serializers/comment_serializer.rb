class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_at, :commenter

  # has_one :user, root: :commenter

  def commenter
  	object.user.name
  end
end
