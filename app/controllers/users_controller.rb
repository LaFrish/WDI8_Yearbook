class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)

    redirect_to users_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to users_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path(@user)
  end

  def user_params
    params.require(:user).permit(:name, :img_url, :squad_name, :squad_id, :quote, :teaching, :memory, :favlang, :wisewords, :tag_list,:github_url, :portfolio_url, :project1_url, :project2_url, :project3_url, :quote, :q1, :q2, :q3, :fb, :linkedin, :email, :student_id, :instructor_id)
  end
end
