Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClassClientsSpecific
Scenario:4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then I entered the values into group from "Group" sheet
     |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|	 				  								  				  				  			
	 When I set up the new create loan from "NewLoanInput" sheet
	 |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Given I navigate To "Overdue Charge" Page
  	 Then I "Run OverDue till Date job" and verified the following tabs
     |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|Modify Transaction1|
	 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
	 Then I make repayment and verified the following tabs
     |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|Repay1|
	 Then I navigate to collection Sheet
	 Then I Make Repayment Through "Collection" sheet
	 |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
	 Then i validate and Verify from "Output" sheet
	 |4493-RBI-ACTCTR-MEET-WEEKLYonFRI-ACTGRP-ACTCLIENT-DISJLG02JAN-REPAYONTIMELESS-OVERDUE-FLAT-COLLSHEETON09JAN.xlsx|
      