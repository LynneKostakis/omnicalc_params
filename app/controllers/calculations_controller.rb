class CalculationsController < ApplicationController
  def flex_square
    
    @user_number = params["a_number"].to_i    
    @squared_number = @user_number**2    
    
    render("calculations/flexible_square_template.html.erb")
  end   
  
  def flex_square_root
    
    @user_number = params["a_number"].to_f    
    @square_root_number = Math.sqrt(@user_number)    
    
    render("calculations/flexible_square_root_template.html.erb")
  end   
  def square_form
    
   
    
    render("calculations/square_form_template.html.erb")
  end 
  
  def process_square
      
    @user_number = params["the_user_number"].to_f 
    @squared_number = @user_number**2
    
    render("calculations/square_results_template.html.erb")
  end 
  
  def square_root_form
    
   
    
    render("calculations/square_root_form_template.html.erb")
  end 
  
  def process_square_root
      
    @user_number = params["the_user_number"].to_f 
    @square_root_number = Math.sqrt(@user_number)    
    
    render("calculations/square_root_results_template.html.erb")
  end 
  
  def flex_payment
    
      @user_basis_points = params["a_number"].to_f/100  
      @user_number_years = params["b_number"].to_f
      @user_present_value = params["c_number"].to_f
      @monthly_payment = ((@user_basis_points/100/12)*@user_present_value)/(1-((1+(@user_basis_points/100/12))**(@user_number_years*-12)))
    render("calculations/flexible_payment_template.html.erb")
    
  end 
  
  def process_random_number
      
    @min = params["min"].to_i 
    @max = params["max"].to_i 
    @random_number = rand(@min..@max)
    
    
    render("calculations/random_number_template.html.erb")
  end 

  def payment_form
    
   
    
    render("calculations/payment_form_template.html.erb")
  end 
  
  def process_payment
      
      @user_apr = params["the_user_apr"].to_f
      @user_number_years = params["the_user_years"].to_f
      @user_present_value = params["the_user_pv"].to_f
      @monthly_payment = ((@user_apr/100/12)*@user_present_value)/(1-((1+(@user_apr/100/12))**(@user_number_years*-12)))
    
    render("calculations/payment_results_template.html.erb")
  end 
  
def random_form
    
    render("calculations/random_form_template.html.erb")
  end 

def process_random
      
    @min = params["the_user_min"].to_i 
    @max = params["the_user_max"].to_i 
    @random_number = rand(@min..@max)
    
    
    render("calculations/random_results_template.html.erb")
  end 
  
end
