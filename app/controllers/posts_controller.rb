class PostsController < ApplicationController
  def index
    @posts = Post.all
    #テーブルのレコードを全て取得

    @today = Date.current.strftime('%Y年%m月%d日')
    @count = Post.count

  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :startday, :endday, :allday, :contents))
    if @post.save
      flash[:notice] = "スケジュールを新規作成しました"
      redirect_to :posts
    else
      render "new"
    end
    
  end

  def show
    @post = Post.find(params[:id])
    @today = Date.current.strftime('%Y年%m月%d日')
  end

  def edit
    @post = Post.find(params[:id])
    @today = Date.current.strftime('%Y年%m月%d日')
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :startday, :endday, :allday, :contents))
      flash[:notice] = "スケジュールの内容を更新しました"
      redirect_to :posts
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :posts
  end

  
  
end
