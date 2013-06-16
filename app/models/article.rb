class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :my_story 
  field :anonymous, type: Boolean, default: false
  embeds_many :comments
  belongs_to :user
end
