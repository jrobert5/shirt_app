class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all

    render("shirts/index.html.erb")
  end

  def show
    @shirt = Shirt.find(params[:id])

    render("shirts/show.html.erb")
  end

  def new
    @shirt = Shirt.new

    render("shirts/new.html.erb")
  end

  def create
    @shirt = Shirt.new

    @shirt.invoice_id = params[:invoice_id]
    @shirt.fabric_id = params[:fabric_id]
    @shirt.collar_id = params[:collar_id]
    @shirt.cuff_id = params[:cuff_id]

    save_status = @shirt.save

    if save_status == true
      redirect_to("/invoices/#{@shirt.invoice_id}", :notice => "Shirt created successfully.")
    else
      render("shirts/new.html.erb")
    end
  end

  def edit
    @shirt = Shirt.find(params[:id])
    @fabrics = Fabric.all
    @collars = Collar.all
    @cuffs = Cuff.all
    render("shirts/edit.html.erb")
  end

  def update
    @shirt = Shirt.find(params[:id])

    @shirt.invoice_id = params[:invoice_id]
    @shirt.fabric_id = params[:fabric_id]
    @shirt.collar_id = params[:collar_id]
    @shirt.cuff_id = params[:cuff_id]

    save_status = @shirt.save

    if save_status == true
      redirect_to("/shirts/#{@shirt.id}", :notice => "Shirt updated successfully.")
    else
      render("shirts/edit.html.erb")
    end
  end

  def destroy
    @shirt = Shirt.find(params[:id])

    @shirt.destroy

    if URI(request.referer).path == "/shirts/#{@shirt.id}"
      redirect_to("/", :notice => "Shirt deleted.")
    else
      redirect_to(:back, :notice => "Shirt deleted.")
    end
  end
end
