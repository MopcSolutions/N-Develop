require 'json'

class AuthorsController < ApplicationController
  
  # index
  def index
    # authors = Author.sorted
    render :json => Author.sorted
    # @retval = JSON.pretty_generate(authors)
    # render content_type: 'application/json'
  end

  # show
  def show
    @user = Author.find(params[:id])
    render json: @user
  end
  
  
  # write a author
  def put
    render content_type: 'application/json'
  end

  # get one or more authors
  def get
    render :json => Author.sorted
  end
end
