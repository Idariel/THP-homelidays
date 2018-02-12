class RentedPlacesController < ApplicationController
	     def index
        @rented_places = Rented_place.all
      end
      def new
        @rented_place = Rented_place.new
      end
      def create
        @rented_place = Rented_place.create(rented_place_params)
        @rented_place.save
        redirect_to @rented_place
      end
      def show
        # return one user
        @rented_place = Rented_place.find(params[:id])
      end
      def edit # idem new
        @rented_place = Rented_place.find(params[:id])
      end
      def update # pratiquement identique à create
        @rented_place = Rented_place.find(params[:id])
        if @rented_place.update(rented_place_params)
          redirect_to @rented_place
        else
          render 'edit'
        end
      end
      def destroy
        @rented_place = Rented_place.find(params[:id])
        @rented_place.destroy
        redirect_to rented_places_path
      end

      # Utilisé dans create et update
      private
      def rented_place_params
        params.require(:rented_place).permit(:address_place1 :address_place2 :zip_code_place :city_name_place :area_code_place :description :nb_of_room :facilities :other_informations)
      end

end
