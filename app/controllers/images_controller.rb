class ImagesController < ApplicationController
	     def index
        @images = Image.all
      end
      def new
        @image = Image.new
      end
      def create
        @image = Image.create(image_params)
        @image.save
        redirect_to @image
      end
      def show
        # return one user
        @image = Image.find(params[:id])
      end
      def edit # idem new
        @image = Image.find(params[:id])
      end
      def update # pratiquement identique à create
        @image = Image.find(params[:id])
        if @image.update(image_params)
          redirect_to @image
        else
          render 'edit'
        end
      end
      def destroy
        @image = Image.find(params[:id])
        @image.destroy
        redirect_to images_path
      end

      # Utilisé dans create et update
      private
      def image_params
        params.require(:image).permit(:name_image :url_image)
      end

end
