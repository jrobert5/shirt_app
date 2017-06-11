class FabricColorsController < ApplicationController
  def index
    @fabric_colors = FabricColor.all

    render("fabric_colors/index.html.erb")
  end

  def show
    @fabric_color = FabricColor.find(params[:id])

    render("fabric_colors/show.html.erb")
  end

  def new
    @fabric_color = FabricColor.new

    render("fabric_colors/new.html.erb")
  end

  def create
    @fabric_color = FabricColor.new

    @fabric_color.fabric_id = params[:fabric_id]
    @fabric_color.color_id = params[:color_id]

    save_status = @fabric_color.save

    if save_status == true
      redirect_to("/fabrics/#{@fabric_color.fabric_id}", :notice => "Fabric color created successfully.")
      # redirect_to("/fabric_colors/#{@fabric_color.id}", :notice => "Fabric color created successfully.")
    else
      render("fabric_colors/new.html.erb")
    end
  end

  def edit
    @fabric_color = FabricColor.find(params[:id])

    render("fabric_colors/edit.html.erb")
  end

  def update
    @fabric_color = FabricColor.find(params[:id])

    @fabric_color.fabric_id = params[:fabric_id]
    @fabric_color.color_id = params[:color_id]

    save_status = @fabric_color.save

    if save_status == true
      redirect_to("/fabric_colors/#{@fabric_color.id}", :notice => "Fabric color updated successfully.")
    else
      render("fabric_colors/edit.html.erb")
    end
  end

  def destroy
    @fabric_color = FabricColor.find(params[:id])

    @fabric_color.destroy

    if URI(request.referer).path == "/fabric_colors/#{@fabric_color.id}"
      redirect_to("/", :notice => "Fabric color deleted.")
    else
      redirect_to(:back, :notice => "Fabric color deleted.")
    end
  end
end
