Feature:ChaitanyaSanityTestScenarios

Background:
	Given I navigate to mifos using "chaitanya#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully


@RunnerClass2
Scenario: 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date
  Given I setup the village
  When I entered the values into village from "village" sheet
  	 | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx|
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx|
  Then I verified the following Tabs details successfully 
	 | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx|Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date-MakeRepayment.xlsx|Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche&ReschRepayDate" and verified the following tabs
	 | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date-Disb2ndTranche.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4940-DisburseLoan-With-FixedEMI
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4940-DisburseLoan-With-FixedEMI.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4940-DisburseLoan-With-FixedEMI.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4940-DisburseLoan-With-FixedEMI.xlsx|
  Then I verified the following Tabs details successfully 
	 | 4940-DisburseLoan-With-FixedEMI.xlsx|Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4940-DisburseLoan-With-FixedEMI-MakeRepayment.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche&ReschRepayDate" and verified the following tabs
	 | 4940-DisburseLoan-With-FixedEMI-Disb2ndTranche.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
 
 @RunnerClass2
Scenario: 4941-Disbursement-Date-Repayment-Date-Onsameday
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4941-Disbursement-Date-Repayment-Date-Onsameday.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4941-Disbursement-Date-Repayment-Date-Onsameday.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4941-Disbursement-Date-Repayment-Date-Onsameday.xlsx|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4941-Disbursement-Date-Repayment-Date-Onsameday.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
  
  @RunnerClass2
Scenario: 4942-Validate-Actual-Disbursement-Date-Against-Expected-DisbursementDate
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4942-Validate-Actual-Disbursement-Date-Against-Expected-DisbursementDate.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4942-Validate-Actual-Disbursement-Date-Against-Expected-DisbursementDate.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4942-Validate-Actual-Disbursement-Date-Against-Expected-DisbursementDate.xlsx|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4942-Validate-Actual-Disbursement-Date-Against-Expected-DisbursementDate.xlsx|Modify Transaction|
  Then i validate and Verify from "error" sheet
	 | 4942-Validate-Actual-Disbursement-Date-Against-Expected-DisbursementDate.xlsx|
  

@RunnerClass2
Scenario: 4943-DisburseLoan-ChangeMeetingDate-MakeRepayment
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4943-DisburseLoan-ChangeMeetingDate-MakeRepayment.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4943-DisburseLoan-ChangeMeetingDate-MakeRepayment.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4943-DisburseLoan-ChangeMeetingDate-MakeRepayment.xlsx|
  And I "ChangeMeetingdate" and verified the following tabs
	 | 4943-DisburseLoan-ChangeMeetingDate-MakeRepayment.xlsx|Modify Transaction|
  And I navigate To Loan Account Page
  Then I verified the following Tabs details successfully 
	 |4943-DisburseLoan-ChangeMeetingDate-MakeRepayment.xlsx|Summary|Repayment Schedule|
  
 @RunnerClass2
Scenario: 4944-Arrears-Recognition-Based-On-the-Original-Schedule
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4944-Arrears-Recognition-Based-On-the-Original-Schedule.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4944-Arrears-Recognition-Based-On-the-Original-Schedule.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4944-Arrears-Recognition-Based-On-the-Original-Schedule.xlsx|
  And I "ChangeMeetingdate" and verified the following tabs
	 | 4944-Arrears-Recognition-Based-On-the-Original-Schedule.xlsx|Modify Transaction|
  And I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4944-Arrears-Recognition-Based-On-the-Original-Schedule-MakeRepayment.xlsx|Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|Modify Transaction3|
  And I "Disburse2ndTranche&ReschRepayDate" and verified the following tabs
	 | 4944-Arrears-Recognition-Based-On-the-Original-Schedule-Disb2Tranche.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|Modify Transaction1|
 
@RunnerClass2
Scenario: 4945-Do-Repayment-After-the-Maturity-Date
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4945-Do-Repayment-After-the-Maturity-Date.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4945-Do-Repayment-After-the-Maturity-Date.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4945-Do-Repayment-After-the-Maturity-Date.xlsx|
  And I "Disburse2ndTranche&MakeRepayment" and verified the following tabs
	 | 4945-Do-Repayment-After-the-Maturity-Date.xlsx|Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Summary|Repayment Schedule|Transactions|
 
 @RunnerClass2
Scenario: 4946-Close-Loan-On-Overpayment
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4946-Close-Loan-On-Overpayment.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4946-Close-Loan-On-Overpayment.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4946-Close-Loan-On-Overpayment.xlsx|
  And I "MakeRepayment" and verified the following tabs
	 | 4946-Close-Loan-On-Overpayment.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
 
@RunnerClass2
Scenario: 4947-Advanced-Accounting-Rule
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4947-Advanced-Accounting-Rule.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4947-Advanced-Accounting-Rule.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4947-Advanced-Accounting-Rule.xlsx|
  And I "MakeRepayment" and verified the following tabs
	 | 4947-Advanced-Accounting-Rule.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|
  Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
  Then I verified the "Transactions" details and read the transaction Id 
	 | 4947-Advanced-Accounting-Rule.xlsx|
  And I Navigate to Accounting web page
  And I search with transaction id & verified the accounting entries
     | 4947-Advanced-Accounting-Rule.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Repayment1|Acc_Periodic|

@RunnerClass2
Scenario: 4948-Disburse1stTranche-WaiveChargeFor-2ndTranche
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4948-Disburse1stTranche-WaiveChargeFor-2ndTranche.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4948-Disburse1stTranche-WaiveChargeFor-2ndTranche.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4948-Disburse1stTranche-WaiveChargeFor-2ndTranche.xlsx|
  Then I verified the following Tabs details successfully 
	 | 4948-Disburse1stTranche-WaiveChargeFor-2ndTranche.xlsx|Summary|Repayment Schedule|Transactions|
  And I "WaiveChargeFor2ndTranche" and verified the following tabs
	 | 4948-Disburse1stTranche-WaiveChargeFor-2ndTranche-Disb2ndtranche.xlsx|Charges|Charges1|Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment" and verified the following tabs
	 | 4948-Disburse1stTranche-WaiveChargeFor-2ndTranche-MakeRepayment.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4949-TransferClientsBetweenGroups
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4949-TransferClientsBetweenGroups.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4949-TransferClientsBetweenGroups.xlsx|		  								  				  				  			
  Then I entered the values into client from "Input" sheet
	 | CreateChaitanyaclient.xlsx|		 				  								  				  				  			
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4949-TransferClientsBetweenGroups.xlsx|
  Given I setup the center
  When I entered the values into center from "Center" sheet
	 | 4949-TransferClientsBetweenGroups-2ndCenter.xlsx|
  Then I entered the values into group from "Group" sheet
     | 4949-TransferClientsBetweenGroups-2ndCenter.xlsx|
  And I "TransferClientToAnotherGroup" and verified the following tabs
	 | 4949-TransferClientsBetweenGroups-2ndCenter.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
  
