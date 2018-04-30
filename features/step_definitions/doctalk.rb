
Given("I am in doctalk home page") do
  @browser.navigate.to "https://doctalkweb.herokuapp.com/"
end

When("I click on signup button") do
  sleep 2
  @browser.find_element(xpath: "//div[2]/ul/li[1]/form/input").displayed?
  sleep 2
  @browser.find_element(xpath: "//div[2]/ul/li[1]/form/input").click
end

Then("I should get singup form for new sign-in") do
  sleep 3
  if  @browser.find_element(id: "popup_modal").displayed?
    puts "login popup displayed"
  end
end
Given("I am on singup form") do
  @browser.find_element(id: "popup_modal").displayed?
end

When("I enter all the details") do
  @browser.find_element(id: "user_name").send_keys "chytra"
  @browser.find_element(id: "user_email").send_keys "chytramn33@gmail.com"
  @browser.find_element(id: "user_password").send_keys "Chytra123!"
  @browser.find_element(id: "user_password_confirmation").send_keys "Chytra123!"
  sleep 3
  @browser.find_element(name: "commit").click

end

# Then("I should see signup succesfully") do 
#   sleep 5
#   if @browser.find_element(xpath: "//div[2]/ul/li[2]/form/input[2]").displayed?  
#     puts "sucessfully logged out"
#   end
# end

Then("I should see signup succesfullys") do
 @browser.find_element(id: "flash")
end

Given("I am on home page") do
  @browser.find_element(id: "content")
end

When("I click on signout button") do
  @browser.find_element(xpath: "//div[2]/ul/li[2]/form/input[2]").displayed? 
   @browser.find_element(xpath: "//div[2]/ul/li[2]/form/input[2]").click
end

Then("I should see signouted succesfully") do
  puts "sucessfully logged out"
end
