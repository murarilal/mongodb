class Author
  include Mongoid::Document
  field :name
  #key :name, :type => String
  field :_id, type: String, default: ->{ name }
  #references_many :articles
  has_many :articles
end
