class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :subreddit, :title, :url, :content
end
