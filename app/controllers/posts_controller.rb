class PostsController < ApplicationController
  def index #indexアクションを定義した
    @posts = Post.all #すべてのレコードを@postsに代入
  end

  def new #newアクションはページを表示させるだけなので、アクションを定義するだけ
  end

  def create
    Post.create(content: params[:content])
  end
end
