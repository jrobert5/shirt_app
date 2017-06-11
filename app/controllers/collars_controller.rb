class CollarsController < ApplicationController
  def index
    @collars = Collar.all

    render("collars/index.html.erb")
  end

  def show
    @collar = Collar.find(params[:id])

    render("collars/show.html.erb")
  end

  def new
    @collar = Collar.new

    render("collars/new.html.erb")
  end

  def create
    @collar = Collar.new

    @collar.collar_name = params[:collar_name]
    @collar.collar_image_url = params[:collar_image_url]

    save_status = @collar.save

    if save_status == true
      redirect_to("/collars/#{@collar.id}", :notice => "Collar created successfully.")
    else
      render("collars/new.html.erb")
    end
  end

  def edit
    @collar = Collar.find(params[:id])

    render("collars/edit.html.erb")
  end

  def update
    @collar = Collar.find(params[:id])

    @collar.collar_name = params[:collar_name]
    @collar.collar_image_url = params[:collar_image_url]

    save_status = @collar.save

    if save_status == true
      redirect_to("/collars/#{@collar.id}", :notice => "Collar updated successfully.")
    else
      render("collars/edit.html.erb")
    end
  end

  def destroy
    @collar = Collar.find(params[:id])

    @collar.destroy

    if URI(request.referer).path == "/collars/#{@collar.id}"
      redirect_to("/", :notice => "Collar deleted.")
    else
      redirect_to(:back, :notice => "Collar deleted.")
    end
  end
end
