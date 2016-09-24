class GiftsController < ApplicationController
  before_action :set_gift, only: [:show, :edit, :update, :destroy]

  # GET /gifts
  def index
    @gifts = Gift.all
  end

  # GET /gifts/1
  def show
  end

  # GET /gifts/new
  def new
    @gift = Gift.new
  end

  # GET /gifts/1/edit
  def edit
      
  end

  # POST /gifts
  def create
    @gift = Gift.new(gift_params)
    
    #@gift.image = File.open()
    #if @gift.image.file.nil?
    @gift.image = params[:image]   
    #end
    if @gift.save
    #if @gift.image.file.nil?
      redirect_to @gift, notice: 'Gift was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /gifts/1
  def update
    #@gift.remove_image! 
    
    #@gift.image = params[:image]
    if @gift.update(gift_params)
      
      redirect_to @gift, notice: 'Gift was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /gifts/1
  def destroy
    @gift.destroy
    redirect_to gifts_url, notice: 'Gift was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gift
      @gift = Gift.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def gift_params
      #params.fetch(:gift, {:name,:heading})
      params.require(:gift).permit(:giftname, :heading, :image)
    end
end
