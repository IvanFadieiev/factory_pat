class MainController < ApplicationController
  include PersonCreator::Switcher

  def index
  end

  def create
    if person_build params['sent_to']
      redirect_to :back
    else
      render :index
    end
  end

  def load_user_partial
    user_vars
    render 'user_nested_attr', layout: false
  end

  def load_customer_partial
    customer_vars
    render 'customer_nested_attr', layout: false
  end

  private

  def user_vars
    @user = User.new
    @user.build_address
  end

  def customer_vars
    @customer = Customer.new
    @customer.address.new
  end

  private
  def obj_params
    PersonCreator::Params.new(params).obj_params
  end
end
