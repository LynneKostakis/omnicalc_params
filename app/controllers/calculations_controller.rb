class CalculationsController < ApplicationController
  def flex_square
    
    @user_number = params["a_number"].to_i    
    @squared_number = @user_number**2    
    
    render("calculations/flexible_square_template.html.erb")
  end   
  
  def flex_square_root
    
    @user_number = params["a_number"].to_i    
    @square_root_number = Math.sqrt(@user_number)    
    
    render("calculations/flexible_square_root_template.html.erb")
  end   
  def square_form
    
   
    
    render("calculations/square_form_template.html.erb")
  end 
  
  def process_square
      
    @user_number = params["the_user_number"].to_i 
    @squared_number = @user_number**2
    
    render("calculations/square_results_template.html.erb")
  end 
  
  def square_root_form
    
   
    
    render("calculations/square_root_form_template.html.erb")
  end 
  
  def process_square_root
      
    @user_number = params["the_user_number"].to_i    
    @square_root_number = Math.sqrt(@user_number)    
    
    render("calculations/square_root_results_template.html.erb")
  end 
end
