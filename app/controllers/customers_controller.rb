class CustomersController < ApplicationController
  def index
    @customers = Customer.all

    render("customers/index.html.erb")
  end

  def show
    @customer = Customer.find(params[:id])
    @invoices = Invoice.where(:customer_id => params[:id])

    @customer_measurements = CustomerMeasurement.where(:customer_id => params[:id])


    render("customers/show.html.erb")
  end

  def new
    @customer = Customer.new

    render("customers/new.html.erb")
  end

  def create
    @customer = Customer.new

    @customer.first_name = params[:first_name]
    @customer.last_name = params[:last_name]


    save_status = @customer.save

    if save_status == true
      redirect_to("/customers/#{@customer.id}", :notice => "Customer created successfully.")
    else
      render("customers/new.html.erb")
    end
  end

  def edit
    @customer = Customer.find(params[:id])

    render("customers/edit.html.erb")
  end

  def update
    @customer = Customer.find(params[:id])

    @customer.id = params[:customer_id]
    @customer.first_name = params[:first_name]
    @customer.last_name = params[:last_name]


    save_status = @customer.save

    if save_status == true
      redirect_to("/customers/#{@customer.id}", :notice => "Customer record updated successfully.")
    else
      render("customers/edit.html.erb")
    end
  end

  def destroy
    @customer = Customer.find(params[:id])

    @customer.destroy

    if URI(request.referer).path == "/customers/#{@customer.id}"
      redirect_to("/", :notice => "Customer record deleted.")
    else
      redirect_to(:back, :notice => "Customer record deleted.")
    end
  end
end
