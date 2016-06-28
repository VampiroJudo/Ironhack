# passwordchecker.rb




class PasswordChecker
  def initialize(email,password)
   @email = email
  @password = password
  end 
  def check_password
    if @password.length >= 7 &&  /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*(_|[^\w])).+$/.match(@password) 
    true 
    else 
    false 
      end 
  end 
  def noDomain_noName
    split_email = @email.split("@")
    if split_email[0].match(@password)
      false  
    elsif split_email[1].match(@password)
      false 
    else 
      true
      end  
  end 
  
end 


