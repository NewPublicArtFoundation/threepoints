class CommentsController < ApplicationController
  before_filter :load_commentable

  def index
    @comments = @commentable.comments
  end

  def new
    @comment = @commentable.comments.new
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      track_activity @comment
      redirect_to @commentable, notice: "Comment created."
    else
      render :new
    end
  end

private

  # alternative option:
  def load_commentable
    klass = [Artist, Graffiti, Location].detect { |c| params["#{c.name.underscore}_id"] }
    @commentable = klass.friendly.find(params["#{klass.name.underscore}_id"])
  end
  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end
end
