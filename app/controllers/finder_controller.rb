class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @customers = Customer.order(full_name: :asc)
  end

  def missing_email
    #@customers = Customer.all
    #@customers = Customer.order(email_address: :desc)
    @customers = Customer.where(email_address: "")
  end
end
