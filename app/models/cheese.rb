class Cheese < ApplicationRecord
  
  def summary
    "#{name}: $#{price}"
  end

  def index
    cheeses = Cheese.all
    render json: cheeses, only: [:id, :name, :price, :is_best_seller]
  end
  

end
