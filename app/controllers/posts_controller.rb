class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @wdier = Wdier.find(params[:wdier_id])
    @post = Post.find(params[:id])
  end

  def edit
    @wdier = Wdier.find(params[:wdier_id])
    @post = Post.find(params[:id])
  end

  def new
    @wdier = Wdier.find(params[:wdier_id])
    @post = Post.new
  end

  def create
    @wdier = Wdier.find(params[:wdier_id])
    @post = @wdier.posts.create!(post_params)
    @post = Post.new(params.require(:post).permit(:task))
    @post.save
    if @post.save
      flash[:alert] = "Post created successfully."
      redirect_to post_params([:wdier_id])
    else
      flash[:alert] = "Error creating post."
      redirect_to wdier_posts_path(@wdier)
    end
  end


  def update
    @wdier = Wdier.find(params[:wdier_id])
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.update(wdier_params)
    else
      flash[:alert] = "Only the author of the post can edit it!"
    end
    redirect_to wdier_posts_path(@post)
  end

  def destroy
    @wdier = Wdier.find(params[:wdier_id])
    @post = Post.find(params[:id])
    if @post.user == current_user
      @post.destroy
    else
      flash[:alert] = "Only the author of the post can delete"
    end
    redirect_to wdier_posts_path(@post)
  end

  private
  def post_params
    params.require(:post).permit(:name,:body)
  end
end
