class RegisteredUsersController < ApplicationController
      def index
        @registered_users = Registered_user.all
      end
      def new
        @registered_user = Registered_user.new
      end
      def create
        @registered_user = Registered_user.create(registered_user_params)
        @registered_user.save
        redirect_to @registered_user
      end
      def show
        # return one user
        @registered_user = Registered_user.find(params[:id])
      end
      def edit # idem new
        @registered_user = Registered_user.find(params[:id])
      end
      def update # pratiquement identique à create
        @registered_user = Registered_user.find(params[:id])
        if @registered_user.update(registered_user_params)
          redirect_to @registered_user
        else
          render 'edit'
        end
      end
      def destroy
        @registered_user = Registered_user.find(params[:id])
        @registered_user.destroy
        redirect_to registered_users_path
      end

      # Utilisé dans create et update
      private
      def registered_user_params
        params.require(:registered_user).permit(:name, :firstname, :address1, :address2, :zip_code, :city_name, :area_code)
      end

end
