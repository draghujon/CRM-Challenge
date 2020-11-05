class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  def alphabetized
    @alpha = Customer.order("full_name")
  end

  def missing_email
    @email = Customer.where(:email_address => "")
  end
end
