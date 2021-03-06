class UsersController < ApplicationController
before_filter :authenticate_user!
load_and_authorize_resource

   def index
     @users = User.all
   end
   def show
     @joined_on = @user.created_at.to_formatted_s(:short)
     if @user.current_sign_in_at
        @last_login = @user.current_sign_in_at.to_formatted_s(:short)
     else
       @last_login = "never"
     end
   end

   def new
   end

   def edit
   end
   
   def create
     respond_to do |format|
       if @user.save
         format.html { redirect_to @user, notice: 'Pomyślnie utworzono konto.' }
         format.json { render :show, status: :sreated, location: @user }
       else
         format.html { render :new }
         format.json { render json: @user.errors, status: :unprocessable_entity }
       end
      end
     end
  
    def update 
      if user_params[:password].blank?
        user_params.delete(:password)
        user_params.delete(:password_confirmation)
    end

    successfully_updated = if needs_password?(@user, user_params)
                             @user.update(user_params)
                           else
                             @user.update_without_password(user_params)
                           end
    respond_to do |format|
      if successfully_updated
        format.html { redirect_to @user, notice: 'Konto zostało zmienione.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json {render json: @user.errors, status: :unprocessable_entity }
      end
     end
    end

    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'Konto zostało pomyślnie usunięte!' }
        format.json { head :no_content }
      end
     end

  private
   def needs_password?(user, params)
     params[:password].present?
   end
   
   def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :role_id)
   end

end

