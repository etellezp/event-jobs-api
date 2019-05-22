class Api::CommentsController < ApplicationController
  before_action :set_profile, only: [:index, :create]

  def index
    render json: @profile.comments
  end

  def create
    @comment = @profile.comments.build(comment_params)
    if @profile.save
      render json: @comment
    else
      render json: { message: @comment.errors }, status: 400
    end
  end

  private

    def set_profile
      @profile = Profile.find(params[:profile_id])
    end

    def comment_params
      params.require(:comment).permit(:review, :rating, :profile_id)
    end

end
