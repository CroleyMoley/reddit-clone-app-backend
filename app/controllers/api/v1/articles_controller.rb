module Api
    module V1

        class ArticlesController < ApplicationController

            def index
                
                @articles = Article.all

                render json: ArticleSerializer.new(@articles)
                

            end
        end
    end
end
