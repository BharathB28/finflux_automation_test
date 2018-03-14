Feature:NewFeatures

Background:
	Given I navigate to mifos using ":8443/?tenantIdentifier=default12#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully


############################################ 	BulkCollection Upload   ######################################################


@RunnerClassNewFeaturesSpecific
Scenario: 5074-BulkCollection-FileUpload
    Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5074-BulkCollection-FileUpload.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
      | 5074-BulkCollection-FileUpload.xlsx |
    Given I navigate To "Bulkcollection" Page
    Then I "Upload file" and verified the following tabs
      | 5074-BulkCollection-FileUpload.xlsx | Modify Transaction |
     Then I navigate To Loan Account Page 
     Then I verified the following Tabs details successfully
	   			|5074-BulkCollection-FileUpload.xlsx|Summary|Repayment Schedule|Transactions|
	   And I verified the "Transactions" details and read the transaction Id
      | 5074-BulkCollection-FileUpload.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5074-BulkCollection-FileUpload.xlsx | Acc_Disbursement | Acc_Repayment |
	   Then I navigate To Saving Account Page
	   And I verified the "Saving Transaction" details successfully
      | 5074-BulkCollection-FileUpload.xlsx |
     And I verified the "Saving Transaction & TransID" details successfully
      | 5074-BulkCollection-FileUpload.xlsx |
    And I Navigate to Accounting web page
     Then I search with transaction id & verified the accounting entries
      | 5074-BulkCollection-FileUpload.xlsx | Deposit1 |
	
	
	@RunnerClassNewFeaturesSpecific
  Scenario: 5075-BankReconcilation-FileUpload
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 5075-BankReconcilation-FileUpload.xlsx |
    When I entered the values into client from "Input1" sheet
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    When I entered the values into client from "Input2" sheet
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    When I entered the values into client from "Input3" sheet
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    When I entered the values into client from "Input4" sheet
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    When I entered the values into client from "Input5" sheet
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    When I set up the new create loan from "GlimLoanInput" sheet
      | 4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx |
    Then I "MakeRepayment" and verified the following tabs
      | 5075-BankReconcilation-FileUpload.xlsx | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 |
 #  Given I navigate To "BankStatements" Page
 #  Then I "Upload file" and verified the following tabs
 #     | 5074-BulkCollection-FileUpload.xlsx | Modify Transaction |    

################################################### 	TOP-UP   #############################################################


@RunnerClassNewFeaturesSpecific
Scenario:5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx|	
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-topup.xlsx|
	  Then I "Navigate to Old Loan" and verified the following tabs
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx |Modify Transaction|
      Then I verified the following Tabs details successfully 
	            |5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I navigate To Loan Account Page 
      And I verified the "Summary" details successfully 
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-topup.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-topup.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-topup.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-topup.xlsx|Acc_Disbursement|Acc_Disbursement1|
      Then I "Navigate to Old Loan" and verified the following tabs
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx |Modify Transaction|
      Then I verified the "Transactions" details and read the transaction Id 
	            |5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Repayment|
	  

@RunnerClassNewFeaturesSpecific
Scenario:5004-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5004-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015.xlsx|	
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5004-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015.xlsx|
	  Then i validate and Verify from "error" sheet
	 			|5004-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015.xlsx|

@RunnerClassNewFeaturesSpecific
Scenario:5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|Repay1|	
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|
	  Then I "Navigate to Old Loan" and verified the following tabs
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx |Modify Transaction|
      Then I verified the following Tabs details successfully 
	            |5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|Summary|Repayment Schedule|Transactions|
	  Then I navigate To Loan Account Page 
	  And I verified the "Summary" details successfully 
	 			|5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015-topup.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	 			|5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015-topup.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015-topup.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015-topup.xlsx|Acc_Disbursement|Acc_Disbursement1|Acc_RepaymentDisbursement|
      Then I "Navigate to Old Loan" and verified the following tabs
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx |Modify Transaction|
      Then I verified the "Transactions" details and read the transaction Id 
	            |5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5005-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|

@RunnerClassNewFeaturesSpecific
Scenario:5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify.xlsx|
	  Then I make repayment and verified the following tabs
     			|5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify.xlsx|Repay1|	
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify.xlsx|
	  And I modify New Account from "UndoDisb" sheet 
	 			|5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify.xlsx|
	  Then I "Navigate to Old Loan" and verified the following tabs
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx |Modify Transaction|
      And I verified the "Summary" details successfully 
	 			|5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	 			|5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5006-DISB01JAN2015-EARLYREPAY--DISBTOPUP-UndoTopUP-Verify.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|

@RunnerClassNewFeaturesSpecific
Scenario:5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|
	  Then I make repayment and verified the following tabs
     			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|Repay1|	
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|
	  When I set up the new create loan from "NewLoanInput2" sheet
	  			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|
	  And I verified the "Summary" details successfully 
	 			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify-topup.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	 			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify-topup.xlsx|
	  And I verified the "Transactions" details successfully 
	            |5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify-topup.xlsx|
	  And I modify New Account from "UndoDisb" sheet 
	 			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|
	  Then I make repayment and verified the following tabs
     			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify-newtopup.xlsx|Repay1|
      And I verified the "Summary" details successfully 
	 			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify-newtopup.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	 			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify-newtopup.xlsx|
	  Then I "Navigate to Old Loan" and verified the following tabs
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx |Modify Transaction|
      And I verified the "Summary" details successfully 
	 			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	 			|5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|
      Then I navigate To Loan Account Page
      Then I verified the "Transactions" details and read the transaction Id 
	            |5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify-newtopup.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5007-DISB01JAN2015-EARLYREPAY-DISBTOPUP-UndoTopUP-ChangeLoanAccount-DISBTOPUP-Verify-newtopup.xlsx|Acc_Disbursement|Acc_Disbursement1|Acc_Repayment|


@RunnerClassNewFeaturesSpecific 
Scenario:5008-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5008-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	  Then I make repayment and verified the following tabs
     			|5008-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|Repay1|	
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5008-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	  And I verified the following Tabs details successfully 
	 			|5008-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassNewFeaturesSpecific	
Scenario:5009-WithoutInterestRecalculation-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5009-WithoutInterestRecalculation-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	  Then I make repayment and verified the following tabs
     			|5009-WithoutInterestRecalculation-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|Repay1|	
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5009-WithoutInterestRecalculation-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	 Then i validate and Verify from "error" sheet
	 			|5009-WithoutInterestRecalculation-DISB1stTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|

@RunnerClassNewFeaturesSpecific
Scenario:5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	  Then I make repayment and verified the following tabs
     			|5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|Repay1|	
	  Then I "Disburse 2nd Tranche" and verified the following tabs
	 			|5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx |Modify Transaction|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	  Then I "WaiveIterest&WriteOff" and verified the following tabs
	 			|5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx |Modify Transaction1|Modify Transaction2|
	  And I verified the "Summary" details successfully 
	 			|5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	 			|5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify.xlsx|Acc_Disbursement|Acc_Disbursement1|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Repayment1|
	  Then I "Navigate to Old Loan" and verified the following tabs
	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx |Modify Transaction|
      Then I verified the "Transactions" details and read the transaction Id 
	            |5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify-OldLoan.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5010-WithoutInterestRecalculation-DisbAllTranche-EARLYREPAY-DISBTOPUP-Verify-OldLoan.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|Acc_Repayment1|

#@RunnerClassNewFeaturesSpecific
#Scenario:5011-DisbLoan-AproveTOPUP-CloseOldLoan-DisburseTopup-Verify
#      Given I setup the clients
#	  When I entered the values into client from "Input" sheet
#	  			|Createclient.xlsx|
#	  When I set up the new create loan from "NewLoanInput" sheet
#	  			|5011-DisbLoan-AproveTOPUP-CloseOldLoan-DisburseTopup-Verify.xlsx|	
#	  When I set up the new create loan from "NewLoanInput1" sheet
#	  			|5011-DisbLoan-AproveTOPUP-CloseOldLoan-DisburseTopup-Verify.xlsx|
#	  Then I "Navigate to Old Loan" and verified the following tabs
#	 			|5003-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015.xlsx |Modify Transaction|
#      Then I "CloeLoan" and verified the following tabs
#	 			|5011-DisbLoan-AproveTOPUP-CloseOldLoan-DisburseTopup-Verify.xlsx |Modify Transaction|
#	  Then I navigate To Loan Account Page
#	  Then I "Disburse TopUp Tranche" and verified the following tabs
#	 			|5011-DisbLoan-AproveTOPUP-CloseOldLoan-DisburseTopup-Verify.xlsx |Modify Transaction1|
#	  Then i validate and Verify from "error" sheet
#	 			|5011-DisbLoan-AproveTOPUP-CloseOldLoan-DisburseTopup-Verify.xlsx|
 
 
###################################################  Slab Based  #############################################################

@RunnerClassNewFeaturesSpecific
Scenario:5018-CreateAndEdit-SlabBased-Charges
      Given I navigate To "Charge Page" Page
      Then I "Create charge and Edit Created charge" and verified the following tabs
	 			|5018-CreateAndEdit-SlabBased-Charges.xlsx |Modify Transaction|Modify Transaction1|
	  Given I navigate To "Charge Page" Page
	  Then I "Create Another charge" and verified the following tabs
	 			|5018-CreateAndEdit-SlabBased-Charges.xlsx |Modify Transaction2|
	  Given I navigate To "Charge Page" Page
	  Then I "Create Another charge" and verified the following tabs
	 			|5018-CreateAndEdit-SlabBased-Charges.xlsx |Modify Transaction3|
	  Given I navigate To "Charge Page" Page
	  Then I "Create Another charge" and verified the following tabs
	 			|5018-CreateAndEdit-SlabBased-Charges.xlsx |Modify Transaction4|

@RunnerClassNewFeaturesSpecific
Scenario:5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify.xlsx|
	  Then I verified the following Tabs details successfully
	   			|5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify.xlsx|Summary|Repayment Schedule|Transactions|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|
	  Then I navigate To Loan Account Page
	  And I modify New Account from "UndoDisb" sheet
	  			|5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify-undoDisb.xlsx|
	  And I "Disburse2ndTranche" and verified the following tabs
	 			|5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify-undoDisb.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify-undoDisb.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify-undoDisb.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Disbursement1|
	  Then I navigate To Loan Account Page
	  And I modify New Account from "UndoDisb" sheet
	  			|5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify-undoDisb-disb.xlsx|
	  And I "Disburse2ndTranche" and verified the following tabs
	 			|5019-SubmitLoan-Add-SlabBasedCharges-DisburseLoan-verify-undoDisb-disb.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|


#Scenario:5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify
#      Given I setup the clients
#	  When I entered the values into client from "Input" sheet
#	  			|Createclient.xlsx|
#	  When I set up the new create loan from "NewLoanInput" sheet
#	  			|5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|
#	  Then I verified the following Tabs details successfully
#	   			|5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|Summary|Repayment Schedule|Transactions|
#	  And I "MakeRepayment&Disburse2ndTranche" and verified the following tabs
#	            |5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify-Repayment.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
#	  And I Navigate to Accounting web page          
#	  And I search with transaction id & verified the accounting entries
 #               |5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|
#	  Then I navigate To Loan Account Page
#	  And I modify New Account from "UndoDisb" sheet
#	  			|5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|
#	  And I "Disburse2ndTranche" and verified the following tabs
#	 			|5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
#	  Then I verified the "Transactions" details and read the transaction Id 
#	            |5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|
#	  And I Navigate to Accounting web page          
#	  And I search with transaction id & verified the accounting entries
 #               |5020-SubmitLoan-Add-SlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|Acc_Disbursement|Acc_RepaymentDisbursement|Acc_Disbursement1|

@RunnerClassNewFeaturesSpecific
Scenario:5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify.xlsx|
	  Then I verified the following Tabs details successfully
	   			|5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify.xlsx|Summary|Repayment Schedule|Transactions|
	  And I "MakeRepayment&Disburse2ndTranche" and verified the following tabs
	            |5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify-repayment.xlsx|Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify-repayment.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify-repayment.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Disbursement1|
	  Then I navigate To Loan Account Page
	  And I modify New Account from "UndoDisb" sheet
	  			|5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify-undoDisb.xlsx|
	  And I "MakeRepayment&Disburse2ndTranche" and verified the following tabs
	            |5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify-undoDisb-repayment.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
	  And I modify New Account from "UndoDisb" sheet
	  			|5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify-undoDisb-waiveCharge.xlsx|
	  And I "WaiveCharge&Reapyment" and verified the following tabs
	            |5021-SubmitLoan-Add-SubSlabBased-InstallmentAmountCharges-DisburseLoan-verify-undoDisb-waiveCharge.xlsx|Charges|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClassNewFeaturesSpecific
Scenario:5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|
	  Then I verified the following Tabs details successfully
	   			|5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify.xlsx|Summary|Repayment Schedule|Transactions|
	  And I "MakeRepayment&Disburse2ndTranche" and verified the following tabs
	            |5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-repayment.xlsx|Modify Transaction|Modify Transaction2|Summary|Repayment Schedule|Transactions|
	  Then I verified the "Transactions" details and read the transaction Id 
	            |5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-repayment.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-repayment.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Disbursement1|
	  Then I navigate To Loan Account Page
	  And I modify New Account from "UndoDisb" sheet
	  			|5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-undoDisb.xlsx|
	  And I "MakeRepayment&Disburse2ndTranche" and verified the following tabs
	            |5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-undoDisb-repayment.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
	  And I modify New Account from "UndoDisb" sheet
	  			|5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-Disb.xlsx|
	  And I "MakeRepayment&Disburse2ndTranche" and verified the following tabs
	            |5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-Disb-repayment.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
	  And I modify New Account from "UndoDisb" sheet
	  			|5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-undoDisb-waiveCharge.xlsx|
	  And I "WaiveCharge&Reapyment" and verified the following tabs
	            |5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-undoDisb-waiveCharge.xlsx|Charges|Modify Transaction|Summary|Repayment Schedule|Transactions|
	  And I modify New Account from "UndoDisb" sheet
	  			|5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-undoDisb-undoRepayment.xlsx|
	  And I "Reapyment" and verified the following tabs
	            |5022-SubmitLoan-Add-SubSlabBased-InstallmentNumberCharges-DisburseLoan-verify-undoDisb-undoRepayment.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|


###################################################  LoanLoss Provisioning  #############################################################

Scenario: 5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015
      Given I Navigate and create Loan Provisioning "Criteria" from "Loan Provisioning Criteria" Sheet
                |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction1|
	  When I set up the new create loan from "NewLoanInput2" sheet
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction2|
	  When I set up the new create loan from "NewLoanInput3" sheet
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction3|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      And I "Read Journal Entries ID" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction4|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|LoanProvisioningAccural|
	  
@RunnerClassNewFeaturesSpecific
Scenario: 5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction1|
	  When I set up the new create loan from "NewLoanInput2" sheet
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction2|
	  When I set up the new create loan from "NewLoanInput3" sheet
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction3|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
      And I "Read Journal Entries ID" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction4|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|LoanProvisioningAccural|
	  
@RunnerClassNewFeaturesSpecific
Scenario: 5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
      Then I "undo transaction from transaction tab" and verified the following tabs
	  			|5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|Modify Transaction1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals1" details successfully 
	  			|5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
      And I "Read Journal Entries ID" and verified the following tabs
	            |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|Modify Transaction2|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|LoanProvisioningAccural|
	  
@RunnerClassNewFeaturesSpecific
Scenario: 5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|
	  And I "MakeEarlyRepayment Lessamount" and verified the following tabs
	            |5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|
      And I "Read Journal Entries ID" and verified the following tabs
	            |5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|Modify Transaction2|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|LoanProvisioningAccura|
	  
@RunnerClassNewFeaturesSpecific
Scenario: 5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
      Then I "PrePay Loan" and verified the following tabs
	  			|5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|Modify Transaction1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
      And I verified the "Loan Provisioning Journals1" details successfully 
	  			|5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
	  And I "Read Journal Entries ID" and verified the following tabs
	            |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|Modify Transaction2|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|LoanProvisioningAccural|
