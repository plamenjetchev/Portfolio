class MyPortfoliosController < ApplicationController
  before_action :set_porfolio_item, only: [:edit, :update, :show, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @portfolio_items = MyPortfolio.by_position
  end

  def sort
    params[:order].each do |key,value|
      MyPortfolio.find(value[:id]).update(position: value[:position])
    end    
    head :ok
  end

  def angular
    @angular_portfolo_items = MyPortfolio.angular
  end

  def new
   @portfolio_item = MyPortfolio.new
  end

  def create
    @portfolio_item = MyPortfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to my_portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit    
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to my_portfolios_path, notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html {redirect_to my_portfolios_path, notice: "Item was removed." }
    end
  end

  private

  def portfolio_params
    params.require(:my_portfolio).permit(:title, 
                                         :subtitle, 
                                         :body,
                                         :main_image,
                                         :thumb_image, 
                                         technologies_attributes: [:id, :name, :_destroy]
                                        )      
  end

  def set_porfolio_item
    @portfolio_item = MyPortfolio.find(params[:id])
  end
end
