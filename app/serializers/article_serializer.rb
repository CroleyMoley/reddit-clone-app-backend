class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :subreddit, :title, :url, :viewcount, :thumbnail
end
