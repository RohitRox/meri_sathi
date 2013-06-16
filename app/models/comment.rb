class Comment
  include Mongoid::Document
  field :content, type: String
  embedded_in :article, :inverse_of => :comments
end
