Given("I am on the index page") do 
 visit root_path
end

When("i click on the {string} link") do |page_name|
 click_link page_name
end

And("I press {string}") do |page_name|
  click_button page_name
end

Then("i should be on the {string}page") do |page_name|
 expect(page).to have_content(page_name)
end

Then("I should see the character {string}") do |page_name|
  expect(page).to have_content(page_name)
end
 
Then("i should see the character {string}") do |page_name|
  expect(page).to have_content(page_name)
end




When("I click on the {string}link") do |page_name|
  click_link page_name
end

Then("I should be on the {string} page") do |page_name|
 expect(page).to have_content(page_name)
end


When("I click on the {string} link") do |page_name|
  click_link page_name
  end



Given("I am on the home page") do
  visit root_path
end


Then("I should see the {string} field") do |field_name|
   expect(page).to have_field(field_name)
end

When("I correctly fill in {string} form") do |field_name|
  fill_in(field_name, :with => "Farmer")
end

When("I click on the {string} button") do |page_name|
  click_button page_name
end

Then("I should see the {string} link") do |string|
 expect(page).to have_link(string)
end
