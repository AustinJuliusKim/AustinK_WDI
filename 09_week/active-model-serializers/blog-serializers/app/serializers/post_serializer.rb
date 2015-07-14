class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :link, :created_at, :poster

  # has_one :user, root: "poster"
  has_many :comments

  def poster
  	object.user.name
  end

end
