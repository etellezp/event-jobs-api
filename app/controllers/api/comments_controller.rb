class Api::CommentsController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]

  def index
    render json: @profile.comments
  end

  def create
    @comment = @profile.comments.build(comment_params)
    if @comment.save
      render json: @comment
    else
      render json: { message: @comment.errors }, status: 400
    end
  end

  def destroy
    @comment = @profile.comments.find(params[:id])
    if @comment.destroy
      render status: 204
    else
      render json: { message: "Unable to delete this comment" }
    end
  end

  private

    def set_profile
      @profile = Profile.find(params[:profile_id])
    end

    def comment_params
      params.require(:comment).permit(:review, :rating)
    end

end
