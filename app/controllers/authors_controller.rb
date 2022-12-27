class AuthorsController < ApplicationController

    def index
        authors = Author.all
        render json: authors
    end

    def author_by_id
        author = Auther.find(params[:id])
        render json:author
    end

    def create
        author = Auther.new(author_params)
        if author.save
            render json: author
        end
    end

    def update
        author = Auther.find(params[:id])
        if author
            author.update(author_params)
            render json: auther, status: 200
        else
           render json: { error: 'Unable to update Author'}, status: 400
        end
    end

    def destroy
        author = Author.find(params[:id])
        if auther
            auther.destroy
            render json: author, status: 200
        else
            render json: { error: 'Unable to delete Author' }, status: 400
        end
    end

    private

    def auther_params
        params.permit(:name, :bio)
    end

end
