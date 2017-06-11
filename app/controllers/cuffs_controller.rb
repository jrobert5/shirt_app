class CuffsController < ApplicationController
  def index
    @cuffs = Cuff.all

    render("cuffs/index.html.erb")
  end

  def show
    @cuff = Cuff.find(params[:id])

    render("cuffs/show.html.erb")
  end

  def new
    @cuff = Cuff.new

    render("cuffs/new.html.erb")
  end

  def create
    @cuff = Cuff.new

    @cuff.cuff_name = params[:cuff_name]
    @cuff.cuff_image_url = params[:cuff_image_url]

    save_status = @cuff.save

    if save_status == true
      redirect_to("/cuffs/#{@cuff.id}", :notice => "Cuff created successfully.")
    else
      render("cuffs/new.html.erb")
    end
  end

  def edit
    @cuff = Cuff.find(params[:id])

    render("cuffs/edit.html.erb")
  end

  def update
    @cuff = Cuff.find(params[:id])

    @cuff.cuff_name = params[:cuff_name]
    @cuff.cuff_image_url = params[:cuff_image_url]

    save_status = @cuff.save

    if save_status == true
      redirect_to("/cuffs/#{@cuff.id}", :notice => "Cuff updated successfully.")
    else
      render("cuffs/edit.html.erb")
    end
  end

  def destroy
    @cuff = Cuff.find(params[:id])

    @cuff.destroy

    if URI(request.referer).path == "/cuffs/#{@cuff.id}"
      redirect_to("/", :notice => "Cuff deleted.")
    else
      redirect_to(:back, :notice => "Cuff deleted.")
    end
  end
end
