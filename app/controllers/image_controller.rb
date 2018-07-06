class ImageController < ApplicationController
    def new
        @image = Image.new
    end

    def create
        @image = Image.new images_params
        @image.save

        # redirect_to @image
    end

    private

    def images_params
        params.require(:image).permit(:description)
    end
end
