class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order('created_at DESC').paginate(page: params[:page], per_page: 2)
  end

  def new
    @post = Post.new
    @post = current_user.posts.build
  end

  def create
    @post = Post.new(post_params)
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end
    def post_params
      params.require(:post).permit(:title, :body, :image)
    end
end
