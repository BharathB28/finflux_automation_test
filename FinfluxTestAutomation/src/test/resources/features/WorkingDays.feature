Feature:WorkingDaysAndHolidays

Background:
	Given I navigate to mifos using ":8443/?tenantIdentifier=default10#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully
	
@RunnerClassWorkingDays
	  Scenario: 4615-DISB02JAN2013-NonWorkSatandSun
      Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|4615-WorkingNoNWorking-Loanproduct.xlsx|
	  Given I create Sat and Sun As "working" days
	  Given I create "same day" As Payments due on non working days
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			|4615-DISB02JAN2013-NonWorkSatandSun.xlsx|

@RunnerClassWorkingDays
	  Scenario: 4616-NonWorkSatandSun-DISB03JAN2013-MakeRepayment
	  Given I create "same day" As Payments due on non working days
	  			|4616-NonWorkSatandSun-DISB03JAN2013-MakeRepayment.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4616-NonWorkSatandSun-DISB03JAN2013-MakeRepayment.xlsx|
	  And I "MakeRepayment&waiveInterest" and verified the following tabs
	            |4616-NonWorkSatandSun-DISB03JAN2013-MakeRepayment.xlsx|Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
 	
	  			
@RunnerClassWorkingDays
	 Scenario: 4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013
	  Given I create "move to next working day" As Payments due on non working days
	  			|4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|	
	  Then I make repayment and verified the following tabs
                |4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|Repay1|
      Then i validate and Verify from "error" sheet
	  			|4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|
      And I "MakeRepayment&waiveInterest" and verified the following tabs
	            |4617-NonWorkSatandSun-REPAYDUE-SAMEDAY-DISBDAILYLOANon02JAN2013-REPAY05JAN2013.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
                
@RunnerClassWorkingDays
	  Scenario: 4618-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTWORKINGDAY-DISBDAILYLOANon02JAN2013
	  Given I create "move to next working day" As Payments due on non working days
	  			|4618-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4618-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	
	  And I verified the "Repayment Schedule" details successfully 
	  			|4618-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	  			  			

@RunnerClassWorkingDays
	  Scenario: 4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013
	  Given I create "move to previous working day" As Payments due on non working days
	  			|4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  Then I should see client created successfully from "Output" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	
	  And I verified the "Repayment Schedule" details successfully 
	  			|4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx|
	  			
@RunnerClassWorkingDays 
	Scenario: 4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013
	 Given I create "move to next repayment day" As Payments due on non working days
	 	 |4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013.xlsx|
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	     |4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013.xlsx|
     Then I entered the values into group from "Group" sheet
         |4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	 |Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	 |4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013.xlsx|	
	 And I verified the "Repayment Schedule" details successfully 
	     |4620-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013.xlsx|
	 	
@RunnerClassWorkingDays 
	Scenario: 4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th
	 Given I create "move to next repayment day" As Payments due on non working days
	 	 |4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|
     Given I setup the center
	 When I entered the values into center from "Input" sheet
	     |4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|
     Then I entered the values into group from "Group" sheet
         |4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	 |Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	 |4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|	
	 Then I make repayment and verified the following tabs
         |4621-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon02JAN2013-MAKEREPAYon5th.xlsx|Repay1|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays 	
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

@RunnerClassWorkingDays 
Scenario: 4950-NonWorkSatandSun-AdvanceSettings-MOVEtoNEXTWEEKDAY-CENTER-DISBDAILYLOANon01JAN2015
	 Given I create "week Day" As Payments due on non working days
	 	|4950-NonWorkSatandSun-AdvanceSettings-MOVEtoNEXTWEEKDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
     Given I setup the clients
	 When I entered the values into client from "Input" sheet
	  	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4950-NonWorkSatandSun-AdvanceSettings-MOVEtoNEXTWEEKDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4950-NonWorkSatandSun-AdvanceSettings-MOVEtoNEXTWEEKDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays  
Scenario: 4951-NonWorkSatandSun-AdvanceSettings-MOVEToPreviousWEEKDAY-CENTER-DISBDAILYLOANon01JAN2015
	 Given I create "week Day" As Payments due on non working days
	 	|4951-NonWorkSatandSun-AdvanceSettings-MOVEToPreviousWEEKDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
     Given I setup the clients
	 When I entered the values into client from "Input" sheet
	  	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4951-NonWorkSatandSun-AdvanceSettings-MOVEToPreviousWEEKDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4951-NonWorkSatandSun-AdvanceSettings-MOVEToPreviousWEEKDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays 
 Scenario: 4952-NonWorkSatandSun-AdvanceSettings-MOVEToSameDAY-CENTER-DISBDAILYLOANon01JAN2015
	 Given I create "week Day" As Payments due on non working days
	 	|4952-NonWorkSatandSun-AdvanceSettings-MOVEToSameDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
     Given I setup the clients
	 When I entered the values into client from "Input" sheet
	  	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4952-NonWorkSatandSun-AdvanceSettings-MOVEToSameDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4952-NonWorkSatandSun-AdvanceSettings-MOVEToSameDAY-CENTER-DISBDAILYLOANon01JAN2015.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays 
Scenario: 4953-NonWorkSatandSun-AdvanceSettings-MOVEToNextWorkingDay-CENTER-DISBDAILYLOANon01JAN2015
	 Given I create "week Day" As Payments due on non working days
	 	|4953-NonWorkSatandSun-AdvanceSettings-MOVEToNextWorkingDay-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
     Given I setup the clients
	 When I entered the values into client from "Input" sheet
	  	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4953-NonWorkSatandSun-AdvanceSettings-MOVEToNextWorkingDay-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4953-NonWorkSatandSun-AdvanceSettings-MOVEToNextWorkingDay-CENTER-DISBDAILYLOANon01JAN2015.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays 
Scenario: 4954-NonWorkSatandSun-AdvanceSettings-MOVEToPreviousWorkingDay-CENTER-DISBDAILYLOANon01JAN2015
	 Given I create "week Day" As Payments due on non working days
	 	|4954-NonWorkSatandSun-AdvanceSettings-MOVEToPreviousWorkingDay-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
     Given I setup the clients
	 When I entered the values into client from "Input" sheet
	  	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4954-NonWorkSatandSun-AdvanceSettings-MOVEToPreviousWorkingDay-CENTER-DISBDAILYLOANon01JAN2015.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4954-NonWorkSatandSun-AdvanceSettings-MOVEToPreviousWorkingDay-CENTER-DISBDAILYLOANon01JAN2015.xlsx|Summary|Repayment Schedule|Transactions|


################## Holidays ###########################


@RunnerClassWorkingDays 
 Scenario: 4955-ThursdayFridayAsHoliday-RepaymentSchedulingRule-As-RescheduleToSpecifiedDate-DISBLOAN
	 Given I create Sat and Sun As "non working" days
	 Given I setup the clients
	 When I entered the values into client from "Input" sheet
	  	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4955-ThursdayFridayAsHoliday-RepaymentSchedulingRule-As-RescheduleToSpecifiedDate-DISBLOAN.xlsx|
	 Given I "create" holiday
	 	|4955-ThursdayFridayAsHoliday-RepaymentSchedulingRule-As-RescheduleToSpecifiedDate-DISBLOAN.xlsx|
	 Given I "create1" holiday
	 	|4955-ThursdayFridayAsHoliday-RepaymentSchedulingRule-As-RescheduleToSpecifiedDate-DISBLOAN.xlsx|
	 Given I "create2" holiday
	 	|4955-ThursdayFridayAsHoliday-RepaymentSchedulingRule-As-RescheduleToSpecifiedDate-DISBLOAN.xlsx|
     Then I navigate to scheduler job & execute "Apply Holidays To Loans"
     And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	    |4955-ThursdayFridayAsHoliday-RepaymentSchedulingRule-As-RescheduleToSpecifiedDate-DISBLOAN.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays 
Scenario: 4956-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN
	 Given I setup the clients
	 When I entered the values into client from "Input" sheet
	  	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4956-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN.xlsx|
	 Then I verified the following Tabs details successfully 
	    |4956-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays 
Scenario: 4957-CreateHoliday-ApplyRepaymentSchedulingRule-DISBJLGLOAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 	|4957-CreateHoliday-ApplyRepaymentSchedulingRule-DISBJLGLOAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     	|4957-CreateHoliday-ApplyRepaymentSchedulingRule-DISBJLGLOAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4957-CreateHoliday-ApplyRepaymentSchedulingRule-DISBJLGLOAN.xlsx|	
	 Then I verified the following Tabs details successfully 
	    |4957-CreateHoliday-ApplyRepaymentSchedulingRule-DISBJLGLOAN.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays 
Scenario: 4958-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-MakeRepayment
	 Given I setup the clients
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4958-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-MakeRepayment.xlsx|	
	 Then I verified the following Tabs details successfully 
	    |4958-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-MakeRepayment.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I make repayment and verified the following tabs
        |4958-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-MakeRepayment.xlsx|Input|
     Then i validate and Verify from "error" sheet
	  	|4958-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-MakeRepayment.xlsx|

@RunnerClassWorkingDays 
Scenario: 4959-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-RescheduleLoanRepayment
	 Given I setup the clients
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4959-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-RescheduleLoanRepayment.xlsx|	
	 Then I verified the following Tabs details successfully 
	    |4959-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-RescheduleLoanRepayment.xlsx|Summary|Repayment Schedule|
	 Then I "Edit Date " In Edit Repayment Schedule page
        |4959-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-RescheduleLoanRepayment.xlsx|Edit Repayment Schedule|
      Then i validate and Verify from "error" sheet
	  	|4959-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN-RescheduleLoanRepayment.xlsx|

@RunnerClassWorkingDays 	  	
 Scenario: 4960-DISBLOAN-RescheduleLoanRepayment-CreateHoliday-ApplyRepaymentSchedulingRule
	 Given I setup the clients
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4960-DISBLOAN-RescheduleLoanRepayment-CreateHoliday-ApplyRepaymentSchedulingRule.xlsx|	
	 Then I "Edit Date " In Edit Repayment Schedule page
        |4960-DISBLOAN-RescheduleLoanRepayment-CreateHoliday-ApplyRepaymentSchedulingRule.xlsx|Edit Repayment Schedule|
     Given I "create" holiday
	 	|4960-DISBLOAN-RescheduleLoanRepayment-CreateHoliday-ApplyRepaymentSchedulingRule.xlsx|
     Then I navigate to scheduler job & execute "Apply Holidays To Loans"
     And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	    |4960-DISBLOAN-RescheduleLoanRepayment-CreateHoliday-ApplyRepaymentSchedulingRule.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassWorkingDays  
Scenario: 4961-NonWorkSatandSun-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN
	 Given I create Sat and Sun As "working" days
	 Given I create "week Day" As Payments due on non working days
	 	|4961-NonWorkSatandSun-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN.xlsx|
     Given I setup the clients
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4961-NonWorkSatandSun-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN.xlsx|	
	 Given I "create" holiday
	 	|4961-NonWorkSatandSun-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN.xlsx|
     Given I "create1" holiday
	 	|4961-NonWorkSatandSun-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN.xlsx|
     Then I navigate to scheduler job & execute "Apply Holidays To Loans"
     And I navigate To Loan Account Page
	 Then I verified the following Tabs details successfully 
	    |4961-NonWorkSatandSun-CreateHoliday-ApplyRepaymentSchedulingRule-DISBLOAN.xlsx|Summary|Repayment Schedule|

@RunnerClassWorkingDays 	  	
Scenario: 4962-NonWorkSatandSun-CreateHolidayOnNonWorkingDay-VerifyError
	 Given I "create" holiday
	 	|4962-NonWorkSatandSun-CreateHolidayOnNonWorkingDay-VerifyError.xlsx|
     Then i validate and Verify from "error" sheet
	  	|4962-NonWorkSatandSun-CreateHolidayOnNonWorkingDay-VerifyError.xlsx|

     	