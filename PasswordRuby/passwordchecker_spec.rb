# passwordchecker_spec.rb
require_relative("../lib/passwordchecker.rb")

RSpec.describe PasswordChecker do
 before :each do 
  @validator = PasswordChecker.new("caridiaz@aol.com", "L!f3isgr3@t") 
  end  
  describe "check_password" do
    it "makes sure password contains at least 7 characters, one letter, one number, one symbol (one upcase & one downcase)" do
      expect(@validator.check_password).to eq(true) 
    end
  end 

   describe "noDomain_noName" do
    it "makes sure domain name and email name are not allowed as part of the password" do
      expect(@validator.noDomain_noName).to eq(true) 
    end
  end 



end 

# L!f3isgr3@t