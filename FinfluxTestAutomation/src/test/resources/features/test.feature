Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClass8 
Scenario: 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs
      And I verified the "GlimRepaymentScheduleOfClient1" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
	          