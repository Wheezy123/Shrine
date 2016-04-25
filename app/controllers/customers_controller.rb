class CustomersController < ApplicationController

  def index
    # binding.pry
    if params[:keywords].present?
      @keywords = params[:keywords]
      customer_search_term = CustomerSearchTerm.new(@keywords)
      # binding.pry
      @customers = Customer.where(
        customer_search_term.where_clause,
        customer_search_term.where_args
      ).order(customer_search_term.order).limit(100)
    else
      @customers = Customer.all.limit(20)
    end
  end

end
