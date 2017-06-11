class FabricsController < ApplicationController
  def index
    @fabrics = Fabric.all

    render("fabrics/index.html.erb")
  end

  def show
    @fabric = Fabric.find(params[:id])
    @fabric_colors = FabricColor.where("fabric_id = #{params[:id]}")

    render("fabrics/show.html.erb")
  end

  def new
    @fabric = Fabric.new

    render("fabrics/new.html.erb")
  end

  def create
    @fabric = Fabric.new

    @fabric.fabric_code = params[:fabric_code]
    @fabric.fabric_desciption = params[:fabric_desciption]
    @fabric.fabric_image_url = params[:fabric_image_url]

    save_status = @fabric.save

    if save_status == true
      redirect_to("/fabrics/#{@fabric.id}", :notice => "Fabric created successfully.")
    else
      render("fabrics/new.html.erb")
    end
  end

  def edit
    @fabric = Fabric.find(params[:id])

    render("fabrics/edit.html.erb")
  end

  def update
    @fabric = Fabric.find(params[:id])

    @fabric.fabric_code = params[:fabric_code]
    @fabric.fabric_desciption = params[:fabric_desciption]
    @fabric.fabric_image_url = params[:fabric_image_url]

    save_status = @fabric.save

    if save_status == true
      redirect_to("/fabrics/#{@fabric.id}", :notice => "Fabric updated successfully.")
    else
      render("fabrics/edit.html.erb")
    end
  end

  def destroy
    @fabric = Fabric.find(params[:id])

    @fabric.destroy

    if URI(request.referer).path == "/fabrics/#{@fabric.id}"
      redirect_to("/", :notice => "Fabric deleted.")
    else
      redirect_to(:back, :notice => "Fabric deleted.")
    end
  end
end
