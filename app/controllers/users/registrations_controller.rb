class User::RegistrationsController < Devise::RegistrationsController
   #before_filter :configure_sign_up_params, only: [:create]
  
   #before_filter :configure_permitted_parameters

  #protected

  #def configure_permitted_parameters
    #devise_parameter_sanitizer.for(:sign_up).push(:firstname, :lastname, :confirmpassword)
  #end
  #def configure_devise_params
    #devise_parameter_sanitizer.for(:sign_up) do |u|
        #u.permit(:firstname, :lastname, :email, :password, :confirmpassword)
    #end
  #end
  
   private

  def sign_up_params
      devise_parameter_sanitizer.sanitize(:sign_up)

    params.require(:user).permit(:firstname, :lastname, :email, :password, :confirmpassword)
  end

  def account_update_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :confirmpassword)
  end
# before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
   def new
   super
    
   end

  # POST /resource
   def create
    
   super
   end

  # GET /resource/edit
   def edit
     super
   end

  # PUT /resource
   def update
     super
   end

  # DELETE /resource
   def destroy
     super
   end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
   def cancel
     super
   end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.for(:sign_up) << :attribute
   end

  # If you have extra params to permit, append them to the sanitizer.
   def configure_account_update_params
     devise_parameter_sanitizer.for(:account_update) << :attribute
   end

  # The path used after sign up.
   def after_sign_up_path_for(resource)
   super(resource)
     #'views/items/new'
     #'items#new'

   end

  # The path used after sign up for inactive accounts.
   def after_inactive_sign_up_path_for(resource)
     super(resource)
          #'views/items/new'
     #'items#new'

   end
   
end