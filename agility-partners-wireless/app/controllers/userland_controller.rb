class UserlandController < ApplicationController
  def home

    @phone_number_given = params[:q]
    @user = Customer.where("phone_number = " + @phone_number_given.to_s)[0]
    @username = ""
    if(nil != @user)
      puts 'Good name'
      @username = @user.name
    else
      puts 'Bad Name'
      @username = "undefined"
    end
  end

  def logout
  end
end
