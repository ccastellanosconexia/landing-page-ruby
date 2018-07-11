class ImagesController < ApplicationController

    def new
        @image = Image.new
    end

    def create
        @image = Image.new images_params
        @image.save

        redirect_to @image
    end

   

    def update
        @image = Image.find params[:id]
        @image.update images_params

        redirect_to @image
    end

    def index
        @images = Image.all
    end

    def show
        @image = Image.find params[:id]
    end

    def destroy 
        @image = Image.find params [:id]
        @image.destroy
        redirect_to images_path
    end

    def edit

        @image = Image.find params[:id]
        
    end

    def update

        @image = Image.find params[:id]
        
        @image.update images_params
        
        redirect_to @image
    end

    def destroy

        @image = Image.find params[:id]
        
        @image.destroy
        
        redirect_to images_path
        
    end
        
     

  #  alias edit show

    private

    def images_params
        params.require(:image).permit(:description)
    end

end
