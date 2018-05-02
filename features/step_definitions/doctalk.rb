
Given("I am on doctalk home page") do
   @browser.navigate.to "https://doctalkweb.herokuapp.com/"
end

When("I enter all the vaild details") do
   sleep 2
  @browser.find_element(xpath: "//div[2]/ul/li[1]/form/input").displayed?
  sleep 2
  @browser.find_element(xpath: "//div[2]/ul/li[1]/form/input").click
  sleep 3
  if  @browser.find_element(id: "popup_modal").displayed?
    puts "login popup displayed"
  end
   @browser.find_element(id: "user_name").send_keys "chytra"
  @browser.find_element(id: "user_email").send_keys "chytramns43@gmail.com"
  @browser.find_element(id: "user_password").send_keys "Chytra123!"
  @browser.find_element(id: "user_password_confirmation").send_keys "Chytra123!"
  sleep 3
  @browser.find_element(name: "commit").click
end

Then("I should see {string}") do |var|
  var1=@browser.find_element(xpath: "//*[@id='flash']/div/p").text 
  if var1==var 
  puts "#{var1}" 
  else 
  raise "#{var1} not found" 
  end
end


Given("I am on dashboard page") do
   @browser.find_element(id: "content")
end

When("I click on signout button") do
  @browser.find_element(xpath: "//div[2]/ul/li[2]/form/input[2]").displayed? 
  @browser.find_element(xpath: "//div[2]/ul/li[2]/form/input[2]").click
end

Then("I should see message {string}") do |varr|
 var1=@browser.find_element(xpath: "//*[@id='flash']/div/p").text 
  if var1==varr 
  puts "#{var1}" 
  else 
  raise "#{var1} not found" 
  end
end
