class ColorsController < ApplicationController
  def index
    @colors = Color.all

    render("colors/index.html.erb")
  end

  def show
    @color = Color.find(params[:id])

    render("colors/show.html.erb")
  end

  def new
    @color = Color.new

    render("colors/new.html.erb")
  end

  def create
    @color = Color.new

    @color.color_name = params[:color_name]

    save_status = @color.save

    if save_status == true
      redirect_to("/colors/#{@color.id}", :notice => "Color created successfully.")
    else
      render("colors/new.html.erb")
    end
  end

  def edit
    @color = Color.find(params[:id])

    render("colors/edit.html.erb")
  end

  def update
    @color = Color.find(params[:id])

    @color.color_name = params[:color_name]

    save_status = @color.save

    if save_status == true
      redirect_to("/colors/#{@color.id}", :notice => "Color updated successfully.")
    else
      render("colors/edit.html.erb")
    end
  end

  def destroy
    @color = Color.find(params[:id])

    @color.destroy

    if URI(request.referer).path == "/colors/#{@color.id}"
      redirect_to("/", :notice => "Color deleted.")
    else
      redirect_to(:back, :notice => "Color deleted.")
    end
  end
end
