Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully

 Scenario: 4615-DISB02JAN2013-NonWorkSatandSun
      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|4615-WorkingNoNWorking-Loanproduct.xlsx|
	  Given I create "same day" As Payments due on non working days
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|
  