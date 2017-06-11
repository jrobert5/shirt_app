class InvoicesController < ApplicationController
  def index

    if current_customer.email == "jrobert5@chicagobooth.edu"
    @invoices = Invoice.all
    else
    @invoices = Invoice.where(:customer_id => current_customer.id)
    end



    render("invoices/index.html.erb")
  end

  def show
    @invoice = Invoice.find(params[:id])
    @fabrics = Fabric.all
    @collars = Collar.all
    @cuffs = Cuff.all
  @shirts = Shirt.where("invoice_id = #{params[:id]}")


    render("invoices/show.html.erb")
  end

  def new
    @invoice = Invoice.new

    render("invoices/new.html.erb")
  end

  def create
    @invoice = Invoice.new

    @invoice.customer_id = params[:customer_id]
    @invoice.status = params[:status]

    save_status = @invoice.save

    if save_status == true
      redirect_to("/invoices/#{@invoice.id}", :notice => "Invoice created successfully.")
    else
      render("invoices/new.html.erb")
    end
  end

  def edit
    @invoice = Invoice.find(params[:id])

    render("invoices/edit.html.erb")
  end

  def update
    @invoice = Invoice.find(params[:id])

    @invoice.customer_id = params[:customer_id]
    @invoice.status = params[:status]

    save_status = @invoice.save

    if save_status == true
      redirect_to("/invoices/#{@invoice.id}", :notice => "Invoice updated successfully.")
    else
      render("invoices/edit.html.erb")
    end
  end

  def destroy
    @invoice = Invoice.find(params[:id])

    @invoice.destroy

    if URI(request.referer).path == "/invoices/#{@invoice.id}"
      redirect_to("/", :notice => "Invoice deleted.")
    else
      redirect_to(:back, :notice => "Invoice deleted.")
    end
  end
end
