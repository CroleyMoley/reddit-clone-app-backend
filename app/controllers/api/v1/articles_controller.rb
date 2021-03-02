module Api
    module V1

        class ArticlesController < ApplicationController

            def index
                
                @articles = Article.all

                render json: ArticleSerializer.new(@articles)
            end

            def create 
                @article = Article.new(article_params)

                if @article.save
                    render json: @article, status: :created
                else
                    error_resp = {
                      error: @article.errors.full_messages.to_sentence
                    }
                    render json: error_resp, status: :unprocessable_entity
                  end
                end


            private 

            def article_params
                params.require(:article).permit(:subreddit, :title, :url, :content, :user_id)
            end


        end
    end
end
