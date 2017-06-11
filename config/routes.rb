Rails.application.routes.draw do
  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Cuff resource:
  # CREATE
  get "/cuffs/new", :controller => "cuffs", :action => "new"
  post "/create_cuff", :controller => "cuffs", :action => "create"

  # READ
  get "/cuffs", :controller => "cuffs", :action => "index"
  get "/cuffs/:id", :controller => "cuffs", :action => "show"

  # UPDATE
  get "/cuffs/:id/edit", :controller => "cuffs", :action => "edit"
  post "/update_cuff/:id", :controller => "cuffs", :action => "update"

  # DELETE
  get "/delete_cuff/:id", :controller => "cuffs", :action => "destroy"
  #------------------------------

  # Routes for the Collar resource:
  # CREATE
  get "/collars/new", :controller => "collars", :action => "new"
  post "/create_collar", :controller => "collars", :action => "create"

  # READ
  get "/collars", :controller => "collars", :action => "index"
  get "/collars/:id", :controller => "collars", :action => "show"

  # UPDATE
  get "/collars/:id/edit", :controller => "collars", :action => "edit"
  post "/update_collar/:id", :controller => "collars", :action => "update"

  # DELETE
  get "/delete_collar/:id", :controller => "collars", :action => "destroy"
  #------------------------------

  # Routes for the Color resource:
  # CREATE
  get "/colors/new", :controller => "colors", :action => "new"
  post "/create_color", :controller => "colors", :action => "create"

  # READ
  get "/colors", :controller => "colors", :action => "index"
  get "/colors/:id", :controller => "colors", :action => "show"

  # UPDATE
  get "/colors/:id/edit", :controller => "colors", :action => "edit"
  post "/update_color/:id", :controller => "colors", :action => "update"

  # DELETE
  get "/delete_color/:id", :controller => "colors", :action => "destroy"
  #------------------------------

  # Routes for the Fabric_color resource:
  # CREATE
  get "/fabric_colors/new", :controller => "fabric_colors", :action => "new"
  post "/create_fabric_color", :controller => "fabric_colors", :action => "create"

  # READ
  get "/fabric_colors", :controller => "fabric_colors", :action => "index"
  get "/fabric_colors/:id", :controller => "fabric_colors", :action => "show"

  # UPDATE
  get "/fabric_colors/:id/edit", :controller => "fabric_colors", :action => "edit"
  post "/update_fabric_color/:id", :controller => "fabric_colors", :action => "update"

  # DELETE
  get "/delete_fabric_color/:id", :controller => "fabric_colors", :action => "destroy"
  #------------------------------

  # Routes for the Fabric resource:
  # CREATE
  get "/fabrics/new", :controller => "fabrics", :action => "new"
  post "/create_fabric", :controller => "fabrics", :action => "create"

  # READ
  get "/fabrics", :controller => "fabrics", :action => "index"
  get "/fabrics/:id", :controller => "fabrics", :action => "show"

  # UPDATE
  get "/fabrics/:id/edit", :controller => "fabrics", :action => "edit"
  post "/update_fabric/:id", :controller => "fabrics", :action => "update"

  # DELETE
  get "/delete_fabric/:id", :controller => "fabrics", :action => "destroy"
  #------------------------------

  # Routes for the Shirt resource:
  # CREATE
  get "/shirts/new", :controller => "shirts", :action => "new"
  post "/create_shirt", :controller => "shirts", :action => "create"

  # READ
  get "/shirts", :controller => "shirts", :action => "index"
  get "/shirts/:id", :controller => "shirts", :action => "show"

  # UPDATE
  get "/shirts/:id/edit", :controller => "shirts", :action => "edit"
  post "/update_shirt/:id", :controller => "shirts", :action => "update"

  # DELETE
  get "/delete_shirt/:id", :controller => "shirts", :action => "destroy"
  #------------------------------

  # Routes for the Payment resource:
  # CREATE
  get "/payments/new", :controller => "payments", :action => "new"
  post "/create_payment", :controller => "payments", :action => "create"

  # READ
  get "/payments", :controller => "payments", :action => "index"
  get "/payments/:id", :controller => "payments", :action => "show"

  # UPDATE
  get "/payments/:id/edit", :controller => "payments", :action => "edit"
  post "/update_payment/:id", :controller => "payments", :action => "update"

  # DELETE
  get "/delete_payment/:id", :controller => "payments", :action => "destroy"
  #------------------------------

  # Routes for the Customer_measurement resource:
  # CREATE
  get "/customer_measurements/new", :controller => "customer_measurements", :action => "new"
  post "/create_customer_measurement", :controller => "customer_measurements", :action => "create"

  # READ
  get "/customer_measurements", :controller => "customer_measurements", :action => "index"
  get "/customer_measurements/:id", :controller => "customer_measurements", :action => "show"

  # UPDATE
  get "/customer_measurements/:id/edit", :controller => "customer_measurements", :action => "edit"
  post "/update_customer_measurement/:id", :controller => "customer_measurements", :action => "update"

  # DELETE
  get "/delete_customer_measurement/:id", :controller => "customer_measurements", :action => "destroy"
  #------------------------------

  devise_for :customers
  # Routes for the Invoice resource:
  # CREATE
  get "/invoices/new", :controller => "invoices", :action => "new"
  post "/create_invoice", :controller => "invoices", :action => "create"

  # READ
  get "/invoices", :controller => "invoices", :action => "index"
  get "/invoices/:id", :controller => "invoices", :action => "show"

  # UPDATE
  get "/invoices/:id/edit", :controller => "invoices", :action => "edit"
  post "/update_invoice/:id", :controller => "invoices", :action => "update"

  # DELETE
  get "/delete_invoice/:id", :controller => "invoices", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'invoices#index'



#------------------------------
# Routes for the Customer resource:
# CREATE
get "/customers/new", :controller => "customers", :action => "new"
post "/create_customers", :controller => "customers", :action => "create"

# READ
get "/customers", :controller => "customers", :action => "index"
get "/customers/:id", :controller => "customers", :action => "show"

# UPDATE
get "/customers/:id/edit", :controller => "customers", :action => "edit"
post "/update_customers/:id", :controller => "customers", :action => "update"

# DELETE
get "/delete_customers/:id", :controller => "customers", :action => "destroy"



end
