class CustomerMeasurementsController < ApplicationController
  def index

    if current_customer.email == "jrobert5@chicagobooth.edu"
    @customer_measurements = CustomerMeasurement.all
    else
    @customer_measurements = CustomerMeasurement.where(:customer_id => current_customer.id)
    end



    render("customer_measurements/index.html.erb")
  end

  def show
    @customer_measurement = CustomerMeasurement.find(params[:id])

    render("customer_measurements/show.html.erb")
  end

  def new
    @customer_measurement = CustomerMeasurement.new

    render("customer_measurements/new.html.erb")
  end

  def create
    @customer_measurement = CustomerMeasurement.new

    @customer_measurement.customer_id = params[:customer_id]
    @customer_measurement.neck = params[:neck]
    @customer_measurement.chest = params[:chest]
    @customer_measurement.stomach = params[:stomach]
    @customer_measurement.seat = params[:seat]
    @customer_measurement.shirt_length = params[:shirt_length]
    @customer_measurement.shoulder_width = params[:shoulder_width]
    @customer_measurement.right_sleeve = params[:right_sleeve]
    @customer_measurement.left_sleeve = params[:left_sleeve]
    @customer_measurement.right_bicep = params[:right_bicep]
    @customer_measurement.left_bicep = params[:left_bicep]
    @customer_measurement.right_cuff = params[:right_cuff]
    @customer_measurement.left_cuff = params[:left_cuff]

    save_status = @customer_measurement.save

    if save_status == true
      redirect_to("/customers/#{@customer_measurement.customer_id}", :notice => "Customer measurement created successfully.")
    else
      render("customer_measurements/new.html.erb")
    end
  end

  def edit
    @customer_measurement = CustomerMeasurement.find(params[:id])

    render("customer_measurements/edit.html.erb")
  end

  def update
    @customer_measurement = CustomerMeasurement.find(params[:id])

    @customer_measurement.customer_id = params[:customer_id]
    @customer_measurement.neck = params[:neck]
    @customer_measurement.chest = params[:chest]
    @customer_measurement.stomach = params[:stomach]
    @customer_measurement.seat = params[:seat]
    @customer_measurement.shirt_length = params[:shirt_length]
    @customer_measurement.shoulder_width = params[:shoulder_width]
    @customer_measurement.right_sleeve = params[:right_sleeve]
    @customer_measurement.left_sleeve = params[:left_sleeve]
    @customer_measurement.right_bicep = params[:right_bicep]
    @customer_measurement.left_bicep = params[:left_bicep]
    @customer_measurement.right_cuff = params[:right_cuff]
    @customer_measurement.left_cuff = params[:left_cuff]

    save_status = @customer_measurement.save

    if save_status == true
      redirect_to("/customer_measurements/#{@customer_measurement.id}", :notice => "Customer measurement updated successfully.")
    else
      render("customer_measurements/edit.html.erb")
    end
  end

  def destroy
    @customer_measurement = CustomerMeasurement.find(params[:id])

    @customer_measurement.destroy

    if URI(request.referer).path == "/customer_measurements/#{@customer_measurement.id}"
      redirect_to("/", :notice => "Customer measurement deleted.")
    else
      redirect_to(:back, :notice => "Customer measurement deleted.")
    end
  end
end
