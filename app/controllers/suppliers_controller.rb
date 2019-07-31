class SuppliersController < ApplicationController
  def new
    @supplier = Supplier.new
  end

  def index
  end

  def create
    @supplier = Supplier.new(params[:supplier])    # Not the final implementation!
    if @supplier.supplier_params
      # Handle a successful save.
      flash[:success] = "Welcome to the Refill!"
      redirect_to @supplier
    else
      render 'new'
    end
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name, :email, :password,:password_confirmation,:companyname,:companyReg ,:city , :phoneNumber ,:landmark ,:district)
  end
end
