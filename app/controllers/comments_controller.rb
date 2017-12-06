class CommentsController < ApplicationController
    def create
        @character = Character.find(params[:article_id])
        @comment = @character.comments.create(comment_params)
        redirect_to article_path(@character)
    end
    
    def destroy
        @character = Character.find(params[:article_id])
        @comment = @character.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@character)
    end
    private
    def comment_params
        params.require(:comment).permit(:commenter, :body)
    end
end