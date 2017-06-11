class LikesController < ApplicationController
  def index

    if current_customer.email == "jrobert5@chicagobooth.edu"
    @likes = Like.all
    else
    @likes = Like.where(:customer_id => current_customer.id)
    end





    render("likes/index.html.erb")
  end

  def show
    @like = Like.find(params[:id])

    render("likes/show.html.erb")
  end

  def new
    @like = Like.new

    render("likes/new.html.erb")
  end

  def create
    @like = Like.new

    @like.customer_id = params[:customer_id]
    @like.fabric_id = params[:fabric_id]

    save_status = @like.save

    if save_status == true


    redirect_to("/fabrics")


    else
      render("likes/new.html.erb")
    end
  end

  def edit
    @like = Like.find(params[:id])

    render("likes/edit.html.erb")
  end

  def update
    @like = Like.find(params[:id])

    @like.customer_id = params[:customer_id]
    @like.fabric_id = params[:fabric_id]

    save_status = @like.save

    if save_status == true
      redirect_to("/likes/#{@like.id}", :notice => "Like updated successfully.")
    else
      render("likes/edit.html.erb")
    end
  end

  def destroy
  @like = Like.find(params[:id])

    @like.destroy

    if URI(request.referer).path == "/likes/#{@like.id}"
      redirect_to("/", :notice => "Like deleted.")
    else
        redirect_to("/fabrics")
    end
  end
end
