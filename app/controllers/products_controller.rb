# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    render json: {
      products: ActiveModel::Serializer::CollectionSerializer.new(
        Product.page(params[:page])
        .includes(:promotions).per(15).ransack(params[:q]).result,
        each_serializer: ProductSerializer
      ),
      total_count: Product.ransack(params[:q]).result.count
    }
  end
end
