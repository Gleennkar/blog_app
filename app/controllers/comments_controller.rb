class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to user_posts_path(current_user)
    else
      render :new

    @comment = current_user.comments.new(comment_params)
    @comment.post_id = params[:post_id]
    if @comment.save
      redirect_to user_post_path(@comment.post.author, @comment.post), notice: 'Comment created successfully'
    else
      @post = Post.find(params[:post_id])
      redirect_to user_post_path(@post.author, @post), notice: 'Failed to create a co
    end
  end

  private

  def comment_params
  
    @post = Post.find(current_user.id)
    params.require(:comment).permit(:text).merge(author_id: current_user.id, post_id: @post.id)
