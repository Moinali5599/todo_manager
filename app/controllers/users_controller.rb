class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.map { |user| user.to_s }.join("\n")
  end

  def show
    user = User.find(params[:id])
    render plain: user.to_string
  end

  def create
    new_user = User.create!(name: params[:name], email: email, passowrd: password)
    render plain: new_user.to_string
  end

  def login
    render plain: User.where("email = ? and password = ?", params[:email], params[:password].exits?)
  end
end
