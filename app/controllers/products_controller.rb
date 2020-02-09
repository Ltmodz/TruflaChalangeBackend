# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :filterProducts
  def index 
    byebug
    products = @products || Product.includes(:promotions).page(1)
    render json: products
  end

  def total_count
    render json: Product.count
  end

  private

  def productParams
    params.permit(:q)
  end

  def filterProducts
      @products = Product.where("name LIKE '%#{params[:q]}%'")  if productParams[:q] &&  !productParams[:q].blank?
      @products = Department.find(productParams[:department_id]).products  if productParams[:department_id] 
      @products = Product.includes(:promotions).where(promotions: { code: productParams[:promo_code] })   if productParams[:promo_code] &&  !productParams[:promo_code].blank?
  end
end
