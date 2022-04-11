class PostsController < ApplicationController
  def index
    @posts = Post.all
    #テーブルのレコードを全て取得

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:name, :startday, :endday, :allday, :content))
    @post.save
    redirect_to :posts
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
