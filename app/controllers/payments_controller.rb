class PaymentsController < ApplicationController
  def index
    @payments = Payment.all

    render("payments/index.html.erb")
  end

  def show
    @payment = Payment.find(params[:id])

    render("payments/show.html.erb")
  end

  def new
    @payment = Payment.new

    render("payments/new.html.erb")
  end

  def create
    @payment = Payment.new

    @payment.invoice_id = params[:invoice_id]
    @payment.payment_type = params[:payment_type]
    @payment.amount = params[:amount]

    save_status = @payment.save

    if save_status == true
      redirect_to("/payments/#{@payment.id}", :notice => "Payment created successfully.")
    else
      render("payments/new.html.erb")
    end
  end

  def edit
    @payment = Payment.find(params[:id])

    render("payments/edit.html.erb")
  end

  def update
    @payment = Payment.find(params[:id])

    @payment.invoice_id = params[:invoice_id]
    @payment.payment_type = params[:payment_type]
    @payment.amount = params[:amount]

    save_status = @payment.save

    if save_status == true
      redirect_to("/payments/#{@payment.id}", :notice => "Payment updated successfully.")
    else
      render("payments/edit.html.erb")
    end
  end

  def destroy
    @payment = Payment.find(params[:id])

    @payment.destroy

    if URI(request.referer).path == "/payments/#{@payment.id}"
      redirect_to("/", :notice => "Payment deleted.")
    else
      redirect_to(:back, :notice => "Payment deleted.")
    end
  end
end
