Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClass8 
Scenario: 4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx|
	  Then I entered the values into group from "Group" sheet
     			|4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input" sheet
	 		    |Createclient.xlsx|	 				  								  				  				  			
	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx |
 	  Then I "Add client charge" and verified the following tabs 
	            |4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx|Modify Transaction |
	  Then I navigate to scheduler job & execute "Apply Recurring Charge On Client"
	  Then I "Navigate to client and Verify Charge Overview" and verified the following tabs 
	            |4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx|Modify Transaction1 |
	  And I verified the "Reccuring Charges Transaction" details successfully 
	  			|4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx|
	  Then I "Pay Reccuring Charge" and verified the following tabs 
	            |4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx| Modify Transaction2|
	  Then I "Navigate to client and Verify Charge Overview" and verified the following tabs 
	            |4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx|Modify Transaction1 |
	  And I verified the "Reccuring Charges Transaction1" details successfully 
	  			|4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx| ClientChargeAccural|
           