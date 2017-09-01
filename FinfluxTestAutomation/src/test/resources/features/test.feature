Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClass8 
Scenario: 4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013
	 Given I create "move to next repayment day" As Payments due on non working days
	 	|4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	 	|4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|
	 Then I entered the values into group from "Group" sheet
     	|4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|	
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	    |4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|
	  And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	    |4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx|Summary|Repayment Schedule|Transactions|
