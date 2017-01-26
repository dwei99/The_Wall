class UsersController < ApplicationController
  def index
    @user = User.find_by_id session[:id]
    @posts = Post.all
    # @comments = @post.messages
    # @foo = Post.find_by_id params[:post_id]

    # @comment = Message.where(post:@foo)
    # puts "*****"
    #  puts @post[0]
    # puts "******"

  end

  def createpost
    @user = User.find_by_id session[:id]
    @post = Post.create(content:params[:post], user:@user)
    redirect_to "/users"
  end

  def createcomment
    @user = User.find_by_id session[:id]
    @foo = Post.find_by_id params[:post_id]
    @comment = Message.create(content:params[:comment], user:@user, post:@foo)
    redirect_to "/users"
  end

  def loginpage
  end

  def loginuser
    @user = User.find_by_email params[:email]
    if @user && @user.authenticate(params[:password])
      session[:id] = @user.id
      puts session[:id]
    end
    redirect_to "/users"
  end

  def new
  end

  def create
    @user = User.create(username:params[:username], email:params[:email], password:params[:password], password_confirmation:params[:password_confirmation])
    # if (@user.errors.messages )
    #  return render :json => @user.errors.messages
    # end
    #redirect to login page
    redirect_to '/users/loginpage'
  end

  def remove_session
  end
end
