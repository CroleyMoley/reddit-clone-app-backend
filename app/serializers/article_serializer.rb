class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :subreddit, :title, :url, :content, :user_id
end
