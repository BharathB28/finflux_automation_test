Feature:TopUPLoan/Gurantor
Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully



################################################### 	TOP-UP   #############################################################

	
	            
	@RunnerClass4   
	  Scenario:4679-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4679-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-1.xlsx|	
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4679-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-topup.xlsx|
	  Then I navigate To Loan Account Page
      Then I verified the following Tabs details successfully 
	            |4679-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-1.xlsx|Repayment Schedule|Transactions|
	  Then I navigate To Loan Account Page 
      Then I verified the "Transactions" details and read the transaction Id 
	            |4679-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-topup.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |4679-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-topup.xlsx|Acc_Disbursement|Acc_Disbursement1|
				
				
@RunnerClass4  
	  Scenario:4680-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4680-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015.xlsx|	
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4680-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015.xlsx|
	  Then i validate and Verify from "error" sheet
	 			|4680-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015.xlsx|
	 			
@RunnerClass4  
	  Scenario:4681-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4681-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|4681-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|Repay1|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4681-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|
	  Then i validate and Verify from "error" sheet
	 			|4681-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-15JAN2015.xlsx|
				
@RunnerClass4 
	  Scenario:4682-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4682-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-1.xlsx|
	  Then I make repayment and verified the following tabs
     			|4682-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-1.xlsx|Repay1|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4682-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-topup.xlsx|
	  Then I navigate To Loan Account Page
      Then I verified the following Tabs details successfully 
	            |4682-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-1.xlsx|Repayment Schedule|Transactions|
	  Then I navigate To Loan Account Page 
      Then I verified the "Transactions" details and read the transaction Id 
	            |4682-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-topup.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |4682-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-topup.xlsx|Acc_Disbursement|Acc_Disbursement1|
				
				
@RunnerClass4  
	  Scenario:4683-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-UNDO-TOPUPLOAN
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4683-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-UNDO-TOPUPLOAN.xlsx|
	  Then I make repayment and verified the following tabs
     			|4683-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-UNDO-TOPUPLOAN.xlsx|Repay1|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4683-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-UNDO-TOPUPLOAN.xlsx|
	  Then I "Do Undo Disbursal" and verified the following tabs
	            |4683-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-UNDO-TOPUPLOAN.xlsx|Undo Disbursal|
      Then i validate and Verify from "error" sheet
	 			|4683-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-UNDO-TOPUPLOAN.xlsx|
	
@RunnerClass4   
	  Scenario:4684-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-FORECLOSURE-TOPUPLOAN-01FEB2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4684-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-FORECLOSURE-TOPUPLOAN-01FEB2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|4684-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-FORECLOSURE-TOPUPLOAN-01FEB2015.xlsx|Repay1|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4684-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-FORECLOSURE-TOPUPLOAN-01FEB2015.xlsx|
	  Then I navigate To Loan Account Page
      Then I verified the following Tabs details successfully 
	            |4684-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-FORECLOSURE-TOPUPLOAN-01FEB2015.xlsx|Repayment Schedule|
	  Then I navigate To Loan Account Page 
	  Then I "Foreclosure" and verified the following tabs
	  			|4684-DISB01JAN2015-10000-amount-EARLYREPAY-on-15JAN2015-DISB-TOPUP-10000amount-01FEB2015-FORECLOSURE-TOPUPLOAN-01FEB2015.xlsx| Foreclosure | Transactions |

@RunnerClass4   
	  Scenario:4685-DISB01JAN2015-10000amount-LATEREPAY-15FEB2015-DISB-TOPUP-10000amount-15FEB2015   
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4685-DISB01JAN2015-10000amount-LATEREPAY-15FEB2015-DISB-TOPUP-10000amount-15FEB2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|4685-DISB01JAN2015-10000amount-LATEREPAY-15FEB2015-DISB-TOPUP-10000amount-15FEB2015.xlsx|Repay1|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4685-DISB01JAN2015-10000amount-LATEREPAY-15FEB2015-DISB-TOPUP-10000amount-15FEB2015.xlsx|
	  Then I navigate To Loan Account Page
      Then I verified the following Tabs details successfully 
	            |4685-DISB01JAN2015-10000amount-LATEREPAY-15FEB2015-DISB-TOPUP-10000amount-15FEB2015.xlsx|Repayment Schedule|
	  Then I navigate To Loan Account Page 
	  Then I verified the "Transactions" details and read the transaction Id 
	            |4685-DISB01JAN2015-10000amount-LATEREPAY-15FEB2015-DISB-TOPUP-10000amount-15FEB2015.xlsx|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |4685-DISB01JAN2015-10000amount-LATEREPAY-15FEB2015-DISB-TOPUP-10000amount-15FEB2015.xlsx|Acc_Disbursement|Acc_Disbursement1|

@RunnerClass4   
	  Scenario:4686-RECALC-DISBCHARGE-DISB01JAN2015-10000amount-REPAY01FEB2015-DISB-TOPUP-10000amount-15FEB2015-PREPAY-01MARCH2015   
      
       Given I setup the product loan "Setup"
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductLoanInput" Sheet
				|4686-RECALC-DISBCHARGE-DISB01JAN2015-10000amount-REPAY01FEB2015-DISB-TOPUP-10000amount-15FEB2015-PREPAY-01MARCH2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4686-RECALC-DISBCHARGE-DISB01JAN2015-10000amount-REPAY01FEB2015-DISB-TOPUP-10000amount-15FEB2015-PREPAY-01MARCH2015.xlsx|
	  Then I make repayment and verified the following tabs
     			|4686-RECALC-DISBCHARGE-DISB01JAN2015-10000amount-REPAY01FEB2015-DISB-TOPUP-10000amount-15FEB2015-PREPAY-01MARCH2015.xlsx|Repay1|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4686-RECALC-DISBCHARGE-DISB01JAN2015-10000amount-REPAY01FEB2015-DISB-TOPUP-10000amount-15FEB2015-PREPAY-01MARCH2015.xlsx|
	  Then I navigate To Loan Account Page
      Then I verified the following Tabs details successfully 
	            |4686-RECALC-DISBCHARGE-DISB01JAN2015-10000amount-REPAY01FEB2015-DISB-TOPUP-10000amount-15FEB2015-PREPAY-01MARCH2015.xlsx|Repayment Schedule|
	  Then I navigate To Loan Account Page 
	  Then I "Make Pre Payment" and verified the following tabs
	  			|4686-RECALC-DISBCHARGE-DISB01JAN2015-10000amount-REPAY01FEB2015-DISB-TOPUP-10000amount-15FEB2015-PREPAY-01MARCH2015.xlsx|Prepay Loan|
	  Then I verified the following Tabs details successfully 
	            |4686-RECALC-DISBCHARGE-DISB01JAN2015-10000amount-REPAY01FEB2015-DISB-TOPUP-10000amount-15FEB2015-PREPAY-01MARCH2015.xlsx|Transactions|	

@RunnerClass4   
	  Scenario:4687-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-WRITEOFF-15JAN2015   
      
       
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4687-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-WRITEOFF-15JAN2015.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4687-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-WRITEOFF-15JAN2015.xlsx|
	  Then I navigate To Loan Account Page
      Then I verified the following Tabs details successfully 
	            |4687-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-WRITEOFF-15JAN2015.xlsx|Repayment Schedule|
	  Then I navigate To Loan Account Page 
	  Then I "WaiveInterest" and verified the following tabs
	  			|4687-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-WRITEOFF-15JAN2015.xlsx|Modify Transaction|
	  Then I verified the following Tabs details successfully 
	            |4687-DISB01JAN2015-10000amount-DISB-TOPUP-15000amount-15JAN2015-WRITEOFF-15JAN2015.xlsx|Transactions|				
				
				
@RunnerClass4   
	  Scenario:4688-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015-Again-TOPUP-15000-01FEB2015   
      
       
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4688-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015-Again-TOPUP-15000-01FEB2015.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4688-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015-Again-TOPUP-15000-01FEB2015-topup2.xlsx|
	  Then I navigate To Loan Account Page
      Then I verified the following Tabs details successfully 
	            |4688-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015-Again-TOPUP-15000-01FEB2015.xlsx|Repayment Schedule|
	  Then I navigate To Loan Account Page
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4688-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015-Again-TOPUP-15000-01FEB2015-topup2.xlsx|
	  Then I navigate To Loan Account Page 
	  Then I verified the following Tabs details successfully 
	            |4688-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015-Again-TOPUP-15000-01FEB2015-topup2.xlsx|Repayment Schedule|
	  Then I navigate To Loan Account Page
	  Then I verified the following Tabs details successfully 
	            |4688-DISB01JAN2015-10000amount-DISB-TOPUP-10000amount-15JAN2015-Again-TOPUP-15000-01FEB2015-topup2.xlsx|Transactions|            
	
	
	
	
			
###########################################################  GUARANTOR  ######################################################################
	
	
	
			
@RunnerClass4   
	  Scenario:4689-SUBMITLOAN01JAN2015-APPROVEON01JAN2015
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4689-SUBMITLOAN01JAN2015-APPROVEON01JAN2015.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4689-SUBMITLOAN01JAN2015-APPROVEON01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4689-SUBMITLOAN01JAN2015-APPROVEON01JAN2015.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4689-SUBMITLOAN01JAN2015-APPROVEON01JAN2015.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4689-SUBMITLOAN01JAN2015-APPROVEON01JAN2015.xlsx|			
	  
	  Then i validate and Verify from "error" sheet
	 			|4689-SUBMITLOAN01JAN2015-APPROVEON01JAN2015.xlsx|

				
@RunnerClass4  
	  Scenario:4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4690-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015.xlsx|
				
				
@RunnerClass4   
	  Scenario:4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx| Modify Transaction |
	  Then i validate and Verify from "error" sheet
	 			|4691-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
				
				
@RunnerClass4
	  Scenario:4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I "Make Pre Payment" and verified the following tabs
	  			|4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|Prepay Loan|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx| Modify Transaction |
	  Then i validate and Verify from "Validate" sheet
	 			|4692-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Repayallloans-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
				
@RunnerClass4
	  Scenario:4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I "WriteOff" and verified the following tabs
	  			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|Modify Transaction|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx| Modify Transaction1 |
	  Then i validate and Verify from "Validate" sheet
	 			|4693-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-writeoffloan-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
				
				
@RunnerClass4
	  Scenario:4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
	  Then I "Do Undo Disbursal" and verified the following tabs
	            |4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|Undo Disbursal|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx| Modify Transaction |
	  Then i validate and Verify from "error" sheet
	 			|4694-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015- Undodisbruse-withdraw9000-fromSELFguarentorsavingsacc.xlsx|
				
				
@RunnerClass4
	  Scenario:4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|
	  Then I "Remove External Guarantor" and verified the following tabs
	            |4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|Modify Transaction|
	  Then i validate and Verify from "error" sheet
	 			|4695-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-DeleteExternalGuarentor-from-viewGuarentorpage.xlsx|
				
				
@RunnerClass4
	  Scenario:4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client3" sheet
	  			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput2" sheet
	  			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  Then I add Guarentor for loan application from "Another Guarentor" sheet
	            |4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
	  Then I "Remove External Guarantor" and verified the following tabs
	            |4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|Modify Transaction|
	  Then i validate and Verify from "Validate" sheet
	 			|4696-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor.xlsx|
				
				
@RunnerClass4
	  Scenario:4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client3" sheet
	  			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput2" sheet
	  			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  Then I add Guarentor for loan application from "Another Guarentor" sheet
	            |4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
	  Then I "Remove External Guarantor" and verified the following tabs
	            |4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|Modify Transaction|
	  Then i validate and Verify from "error" sheet
	 			|4697-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeleteSelfGuarentor.xlsx|
				
				
@RunnerClass4
	  Scenario:4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-HideDeletedGuarentorCheckbox
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client3" sheet
	  			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  When I set up the new create saving account from "NewSavingInput2" sheet
	  			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  Then I add Guarentor for loan application from "Another Guarentor" sheet
	            |4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	  Then I "Remove External Guarantor" and verified the following tabs
	            |4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|Modify Transaction|
	  Then i validate and Verify from "Validate" sheet
	 			|4698-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherGuarentor-DeletePreviousGuarentor-Uncheck-DelCheckbox.xlsx|
	 			
@RunnerClass4
	  Scenario:4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  When I set up the new create saving account from "NewSavingInput2" sheet
	  			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  When I set up the new create saving account from "NewSavingInput3" sheet
	  			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  Then I add Guarentor for loan application from "Self Guarentor1" sheet
	            |4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor1" sheet
	            |4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4699-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ForSELFAndEXTAddGuarentor-Having2SavingsAccounts.xlsx|
				
	
@RunnerClass4
	  Scenario:4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput2" sheet
	  			|4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  Then I add Guarentor for loan application from "Another Self Guarentor" sheet
	            |4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
	  Then I "Remove Self Guarantor" and verified the following tabs
	            |4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|Modify Transaction|
	  Then i validate and Verify from "Validate" sheet
	 			|4700-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-AddAnotherSelfGuarentor-DeletePreviousSelfGuarentor.xlsx|
				
				
@RunnerClass4
	  Scenario:4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  When I set up the new create saving account from "NewSavingInput2" sheet
	  			|4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  Then I add Guarentor for loan application from "Another Self Guarentor" sheet
	            |4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx| Modify Transaction1 |
	  Then I navigate To Loan Account Page 
	  Then I "Remove 1st Self Guarantor" and verified the following tabs
	            |4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|Modify Transaction|
	  Then i validate and Verify from "error" sheet
	 			|4701-SUBMIT01JAN2015-ADDGUARANTOR-SELF+EXT-DISB01JAN2015-ADDGUARANTOR-With0Balance-REMOVE1stSelfGurantor.xlsx|
	
	
@RunnerClass4
	  Scenario:4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromSELFGuarentor-ForecloseLoan
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx| Modify Transaction |
	  Then I navigate To Loan Account Page 
	  Then I "Foreclosure" and verified the following tabs
	  			|4702-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-WITHDRAW7000-FromEXTGuarentor-ForecloseLoan.xlsx| Foreclosure | Transactions |
				
				
@RunnerClass4
	  Scenario:4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromSelfGuarentor-Reschdule
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx| Modify Transaction |
	  Then I navigate To Loan Account Page 
	  Then I "Edit Date " In Edit Repayment Schedule page
                |4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|Edit Repayment Schedule|
      And I verified the "Repayment Schedule" details successfully 
	  			|4703-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-Reschdule.xlsx|
						
				
@RunnerClass4
	  Scenario:4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx| Modify Transaction |
	  Then I navigate To Loan Account Page 
	  Then I "WaiveInterest" and verified the following tabs
	  			|4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|Modify Transaction1|
      Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx| Modify Transaction2 |
	  Then i validate and Verify from "error" sheet
	 			|4704-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw7000FromEXTGuarentor-WaiveINts-withdraw3000FromSELFGuarentor.xlsx|
				
@RunnerClass4
	  Scenario:4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx| Modify Transaction |
	  Then I navigate To Loan Account Page
	  Then I add Guarentor for loan application from "Not Existing Guarentor" sheet
	            |4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|
	  Then i validate and Verify from "Validate" sheet
	 			|4705-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-withdraw9000FromEXTGuarentor-AddAnotherEXT-notExistingClient.xlsx|          
	 				

@RunnerClass4
	  Scenario:4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan
          
      Given I setup the clients
	  When I entered the values into client from "Create Client1" sheet
	  			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|
	  Given I setup the clients
	  When I entered the values into client from "Create Client2" sheet
	  			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|
	  When I set up the new create saving account from "NewSavingInput1" sheet
	  			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|			
	  Then I add Guarentor for loan application from "Self Guarentor" sheet
	            |4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|
	  Then I add Guarentor for loan application from "External Guarentor" sheet
	            |4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|
	  Then I make repayment and verified the following tabs
       			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|Input|Transactions|
	  Then I navigate To Saving Account Page
	  Then I "Withdraw" and verified the following tabs
	            |4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx| Modify Transaction |
	  Then I navigate To Loan Account Page 
	  Then I "undo transaction from transaction tab" and verified the following tabs
	  			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|Modify Transaction1|
	   Then i validate and Verify from "error" sheet
	 			|4706-SUBMITLOAN01JAN2015-ADDGUARANTOR-SELF+EXT-DISBURSEON01JAN2015-RepaymentALL-WithdrawAllfromSavings-undoLastTransactionLoan.xlsx|




################################################ OTHER SCENARIOS  ###############################################################3



	 			
@RunnerClass4      
	  Scenario:4837-SUBMITLOAN-APR01JAN2015-UNDOAPPROVAL
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4837-SUBMITLOAN-APR01JAN2015-UNDOAPPROVAL.xlsx|	
	 Then I "Undo Approval" and verified the following tabs
	  			|4837-SUBMITLOAN-APR01JAN2015-UNDOAPPROVAL.xlsx|Modify Transaction|
	 Then i validate and Verify from "Validate" sheet
	 			|4837-SUBMITLOAN-APR01JAN2015-UNDOAPPROVAL.xlsx|

				
@RunnerClass4      
	  Scenario: 4838-SUBMITLOAN01JAN2015-REJECT01JAN2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4838-SUBMITLOAN01JAN2015-REJECT01JAN2015.xlsx|	
	 Then I "Reject Loan Application" and verified the following tabs
	  			|4838-SUBMITLOAN01JAN2015-REJECT01JAN2015.xlsx|Modify Transaction|
	 Then I verified the following Tabs details successfully
	 			|4838-SUBMITLOAN01JAN2015-REJECT01JAN2015.xlsx|Summary|

				
@RunnerClass4      
	  Scenario: 4839-SUBMITLOAN01JAN2015-WITHDRAWNBYCLIENT01FEB2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4839-SUBMITLOAN01JAN2015-WITHDRAWNBYCLIENT01FEB2015.xlsx|	
	 Then I "Reject Loan Application" and verified the following tabs
	  			|4839-SUBMITLOAN01JAN2015-WITHDRAWNBYCLIENT01FEB2015.xlsx|Modify Transaction|
	 Then I verified the following Tabs details successfully
	 			|4839-SUBMITLOAN01JAN2015-WITHDRAWNBYCLIENT01FEB2015.xlsx|Summary|

				
@RunnerClass4      
	  Scenario: 4840-SUBMITLOAN01JAN2015-DELETE
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4840-SUBMITLOAN01JAN2015-DELETE.xlsx|	
	  Then I "Delete Loan Application" and verified the following tabs
	  			|4840-SUBMITLOAN01JAN2015-DELETE.xlsx| Modify Transaction |
	  Then i validate and Verify from "Validate" sheet
	 			|4840-SUBMITLOAN01JAN2015-DELETE.xlsx|

@RunnerClass4      
	  Scenario: 4841-SUBMITLOAN01JAN2015-ADDcollateral
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4841-SUBMITLOAN01JAN2015-ADDcollateral.xlsx|	
	  Then I "Delete Loan Application" and verified the following tabs
	  			|4841-SUBMITLOAN01JAN2015-ADDcollateral.xlsx| Modify Transaction |
	  Then i validate and Verify from "Validate" sheet
	 			|4841-SUBMITLOAN01JAN2015-ADDcollateral.xlsx|Summary|

				
@RunnerClass4      
	  Scenario: 4843-SUBMITLOAN01JAN2015(withLinkedSavingsAccount)-APR01JAN2015-DISBURSEtoSavings
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4843-SUBMITLOAN01JAN2015(withLinkedSavingsAccount)-APR01JAN2015-DISBURSEtoSavings.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4843-SUBMITLOAN01JAN2015(withLinkedSavingsAccount)-APR01JAN2015-DISBURSEtoSavings.xlsx|	
	  Then I "Disburse to Saving" and verified the following tabs
	  			|4843-SUBMITLOAN01JAN2015(withLinkedSavingsAccount)-APR01JAN2015-DISBURSEtoSavings.xlsx| Modify Transaction |
	  Then I navigate To Saving Account Page
	  And I verified the "Saving Transaction" details successfully
	 			|4843-SUBMITLOAN01JAN2015(withLinkedSavingsAccount)-APR01JAN2015-DISBURSEtoSavings.xlsx|

@RunnerClass4      
	  Scenario: 4844-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15JANUARY2015(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4844-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4844-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4      
	  Scenario: 4845-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4845-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4845-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4      
	  Scenario: 4846-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4846-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4846-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4      
	  Scenario: 4847-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4847-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4847-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4      
	  Scenario: 4848-DISBLOAN01JAN2015(Addcharge)-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4848-DISBLOAN01JAN2015(Addcharge)-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4848-DISBLOAN01JAN2015(Addcharge)-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4      
	  Scenario: 4849-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015-Amount-500(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4849-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015-Amount-500(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4849-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon15FEB2015-Amount-500(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4      
	  Scenario: 4850-DISBLOAN01JAN2015(Addcharge)-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4850-DISBLOAN01JAN2015(Addcharge)-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4850-DISBLOAN01JAN2015(Addcharge)-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4      
	  Scenario: 4851-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4851-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4851-DISBLOAN01JAN2015(AddCharge)-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|
@RunnerClass4     
	  Scenario: 4852-DISBLOAN01JAN2015(AddCharge)-undoDISB-DISBLOAN(Amount-8000)15JAN2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4852-DISBLOAN01JAN2015(AddCharge)-undoDISB-DISBLOAN(Amount-8000)15JAN2015.xlsx|	
	  Then I "Undo Disbursal And Disburse 8000" and verified the following tabs
	  			|4852-DISBLOAN01JAN2015(AddCharge)-undoDISB-DISBLOAN(Amount-8000)15JAN2015.xlsx|Modify Transaction|
	  Then I verified the "Summary" details successfully 
	  			|4852-DISBLOAN01JAN2015(AddCharge)-undoDISB-DISBLOAN(Amount-8000)15JAN2015.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
  			    |4852-DISBLOAN01JAN2015(AddCharge)-undoDISB-DISBLOAN(Amount-8000)15JAN2015.xlsx|
  	  And I verified the "Transactions" details successfully 
  			    |4852-DISBLOAN01JAN2015(AddCharge)-undoDISB-DISBLOAN(Amount-8000)15JAN2015.xlsx|

@RunnerClass4     
	  Scenario: 4853-DISBLOAN01JAN2015(AddCharge)-PREPAYLOANon01APR2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4853-DISBLOAN01JAN2015(AddCharge)-PREPAYLOANon01APR2015.xlsx|	
	  Then I "Make Pre Payment" and verified the following tabs
	  			|4853-DISBLOAN01JAN2015(AddCharge)-PREPAYLOANon01APR2015.xlsx|Prepay Loan|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4854-DISBLOAN01JAN2015(AddCharge)-WRITEOFFon01APR2015
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4854-DISBLOAN01JAN2015(AddCharge)-WRITEOFFon01APR2015.xlsx|	
	  Then I "WaiveInterest" and verified the following tabs
	  			|4854-DISBLOAN01JAN2015(AddCharge)-WRITEOFFon01APR2015.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4855-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4855-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4855-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4856-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4856-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4856-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4857-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4857-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4857-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|
 
@RunnerClass4     
	  Scenario: 4858-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4858-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4858-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4859-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4859-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4859-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|
 
@RunnerClass4     
	  Scenario: 4860-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4860-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4860-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4861-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4861-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4861-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

				
@RunnerClass4     
	  Scenario: 4862-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4862-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4862-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|
 
 @RunnerClass4     
	  Scenario: 4863-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4863-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4863-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4864-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4864-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4864-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-1000(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4865-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4865-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4865-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4866-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4866-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4866-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4867-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4867-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4867-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4868-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4868-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4868-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4869-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4869-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4869-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4     
	  Scenario: 4870-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4870-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4870-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-1000(ontimeRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4871-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-3000(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4871-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-3000(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4871-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-3000(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4872-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-3000(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4872-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-3000(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4872-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-3000(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4873-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-3000(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4873-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-3000(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4873-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-3000(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4874-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4874-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4874-DISBLOAN01JAN2015-Make1stPMNTon01FEB2015-Amount-500(ontimeRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4875-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4875-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4875-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4876-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-3000(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4876-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-3000(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4876-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-3000(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4878-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-3000(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4878-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-3000(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4878-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-3000(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4879-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4879-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4879-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4880-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4880-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4880-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015-Amount-500(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4881-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4881-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4881-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-500(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4882-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4882-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4882-DISBLOAN01JAN2015-Make1stPMNTon15JANUARY2015(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4883-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4883-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4883-DISBLOAN01JAN2015-Make1stPMNTon15FEB2015-Amount-1000(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4884-DISBLOAN01JAN2015-Make1stPMNT-3000-on15FEB2015(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4884-DISBLOAN01JAN2015-Make1stPMNT-3000-on15FEB2015(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4884-DISBLOAN01JAN2015-Make1stPMNT-3000-on15FEB2015(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4885-DISBLOAN01JAN2015-Make1stPMNT-500-on15FEB2015(LateRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4885-DISBLOAN01JAN2015-Make1stPMNT-500-on15FEB2015(LateRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4885-DISBLOAN01JAN2015-Make1stPMNT-500-on15FEB2015(LateRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass4       
	  Scenario: 4886-DISBLOAN01JAN2015-Make1stPMNT-3000-on15JANUARY2015-(earlyRepayement)
          
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|4886-DISBLOAN01JAN2015-Make1stPMNT-3000-on15JANUARY2015-(earlyRepayement).xlsx|	
	  Then I make repayment and read the transaction Id
      			|4886-DISBLOAN01JAN2015-Make1stPMNT-3000-on15JANUARY2015-(earlyRepayement).xlsx|Input|Summary|Repayment Schedule|Transactions|

@RunnerClass8
	  Scenario: 4622-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon08JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13
	 Given I create "move to next repayment meeting day" As Payments due on non working days
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4622-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon08JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4622-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon08JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|	
	 Then i validate and Verify from "error" sheet
	    |4622-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBDAILYLOANon08JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|

@RunnerClass8
	  Scenario: 4623-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBWeeklyLOANon01JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13
	 Given I create "move to next repayment meeting day" As Payments due on non working days
     Given I setup the group
	 When I entered the values into group from "Input" sheet
	  	|4623-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBWeeklyLOANon01JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input" sheet
	 	|Createclient.xlsx|
	 When I set up the new create loan from "NewLoanInput" sheet
	  	|4623-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-DISBWeeklyLOANon01JAN2013-HOLIDAYON15JAN2013RESchedule20thJAN13.xlsx|	
	
@RunnerClass8
Scenario:4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015
  
  Given I setup the "Share" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductShareInput" Sheet
		        |4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
  And I verified the "Share Other Details1" details successfully 
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4787-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-APRACT01JAN2015.xlsx|
				
@RunnerClass8
Scenario: 4788-SUBMITSA(ACTPRD-30DAYS&LKINPRD-15DAYS)-Modify(ACTPRD-15DAYS&LCKINPRD-3ODAYS)-ACT01JAN2015
  
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
  Then I "Modify Share Account Application" and verified the following tabs
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
 And I verified the "Share Other Details2" details successfully 
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4788-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-ModifyApp(MINACTPRD-15DAYS&LCKINPRD-3ODAYS)-APRACT01JAN2015.xlsx|
				
				
@RunnerClass8
Scenario: 4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015
  
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
  Then I "UndoApprove and Activate" and verified the following tabs
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
 And I verified the "Share Other Details2" details successfully 
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4789-SUBMITSA(ACTPRD-30DAY&LCKINPRD-15DAY)-APR01JAN2015-UNDOAPR-APR04JAN2015-ACT05JAN2015.xlsx|
  

@RunnerClass8
Scenario: 4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Other Details1" details successfully 
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
 And I verified the "Share Other Details2" details successfully 
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  #And I verified the "Share Transaction" details successfully 
#	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Charge" details successfully 
	  			|4790-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&ADDCHG'share-activation-flat')-ACT01JAN2015.xlsx|
  
  
@RunnerClass8
Scenario: 4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|
  Then I "Reject Application" and verified the following tabs
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|Modify Transaction|	  				  			
  And I verified the "Share Other Details1" details successfully 
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|
 And I verified the "Share Other Details2" details successfully 
	  			|4791-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-RJCTon01JAN2015.xlsx|
				
				
@RunnerClass8
Scenario: 4792-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-DELETEIT
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4792-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-DELETEIT.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4792-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-DELETEIT.xlsx|
  Then I "Reject Application" and verified the following tabs
	  			|4792-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS)-DELETEIT.xlsx|Modify Transaction|	  				  			
 
  
@RunnerClass8
Scenario: 4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending)
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4793-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015(checkPending).xlsx|	 


@RunnerClass8
Scenario: 4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|Modify Transaction|
  Then I "Approve Additional Share" and verified the following tabs
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|Modify Transaction1|
  And I verified the "Share Other Details1" details successfully 
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4794-SUBMITSA01JAN2015(ACTPRD-30D&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVEADDSHARES.xlsx|	  				  			
 

@RunnerClass8
Scenario: 4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|Modify Transaction|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|Modify Transaction1|
  Then I "Approve Additional Share" and verified the following tabs
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|Modify Transaction2|
  And I verified the "Share Other Details1" details successfully 
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4795-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-ADDSHARES5on02FEB2015-APPROVE.xlsx|	  				  			
 
@RunnerClass8
Scenario: 4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|Modify Transaction|
  Then I "Approve Additional Share" and verified the following tabs
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|Modify Transaction2|
 Then I "Apply Additional Share" and verified the following tabs
	  			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|Modify Transaction1|
  Then i validate and Verify from "error" sheet
	 			|4796-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-APPROVESHARES-APPLYADDSHARES30JAN2015.xlsx|
  
 
@RunnerClass8
Scenario: 4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|
  Then I "REDEEM Share" and verified the following tabs
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4797-SUBMITSA01JAN2015(ACTPRD-30DAYS&LCKINPRD-15DAYS)-ACT01JAN2015-REDEEMSHARES5on01MARCH2015.xlsx|	
				
@RunnerClass8
Scenario: 4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015.xlsx|
  Then I "REDEEM Share" and verified the following tabs
	  			|4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015.xlsx|Modify Transaction|
  Then i validate and Verify from "error" sheet 
	  			|4798-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-REDEEMSHARES15on01APR2015.xlsx|
  
  
@RunnerClass8
Scenario: 4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|Modify Transaction|
  Then I "REDEEM Share" and verified the following tabs
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|Modify Transaction1|
  Then i validate and Verify from "error" sheet 
	  			|4799-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-ADDSHARES5on01FEB2015-REDEEMSHARES15on30JAN2015.xlsx|

@RunnerClass8
Scenario: 4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Other Details1" details successfully 
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  And I verified the "Share Charge" details successfully 
	  			|4800-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-15DAYS&CHG'share-purchase-flat')-ACT01JAN2015.xlsx|
  
  
@RunnerClass8
Scenario: 4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  Then I "REDEEM Share" and verified the following tabs
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|Modify Transaction|
  And I verified the "Share Other Details1" details successfully 
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
  And I verified the "Share Charge" details successfully 
	  			|4801-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15&CHG'share-redeem-flat')-APRACT01JAN2015-REDEEMShare01MAR2015.xlsx|
	  			
@RunnerClass8
Scenario: 4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES
  
   
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
  Then I "Apply Additional Share" and verified the following tabs
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|Modify Transaction|
  Then I "Reject Additional Share" and verified the following tabs
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|Modify Transaction1|
  And I verified the "Share Other Details1" details successfully 
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
  And I verified the "Share Other Details2" details successfully 
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
  And I verified the "Share Transaction" details successfully 
	  			|4802-SUBMITSA01JAN2015(ACTPRD-30&LCKINPRD-15)-ACT01JAN2015-Addshares15on01FEB2015-RJCTADDSHARES.xlsx|
 
@RunnerClass8
Scenario: 4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015.xlsx|
  Then I "Close Share Account" and verified the following tabs
	  			|4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015.xlsx|Modify Transaction|
  Then i validate and Verify from "error" sheet 
	  			|4803-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015-CloseSAon15January2015.xlsx|
  
 
@RunnerClass8
Scenario: 4804-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015
  
   
   Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4804-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4804-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015.xlsx|
  Then i validate and Verify from "error" sheet 
	  			|4804-SUBMITSA01JAN2015(MINACTPRD-30DAYS&LCKINPRD-30DAYS)-APRACT01JAN2015.xlsx|
  
@RunnerClass8
Scenario: 4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD
  
  Given I setup the "Share" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductShareInput" Sheet
		        |4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|
  Then I "Apply Dividend to Product" and verified the following tabs
	  			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|Modify Transaction|
  Then I navigate to scheduler job & execute "Post Dividends For Shares"
  Then I "Navigate to Share account" and verified the following tabs 
	            |4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx| Modify Transaction1 |
  And I verified the "Share dividend" details successfully 
	  			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|
  Then I "Navigate to Saving account" and verified the following tabs
                |4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx| Modify Transaction2 |
  And I verified the "Saving Transaction" details successfully
	 			|4805-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INIT&PSTDVD.xlsx|

				
@RunnerClass8
Scenario: 4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA
  
  Given I setup the "Share" product
		        | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductShareInput" Sheet
		        |4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|
  Given I setup the clients 
  Then I entered the values into client from "Input" sheet
	            |Createclient.xlsx|
  When I set up the new create saving account from "NewSavingInput" sheet
	  			|4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|
  When I set up the new create share account from "NewShareInput" sheet
	  			|4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|
  Then I "Apply Dividend to Product" and verified the following tabs
	  			|4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|Modify Transaction|
 
  Then I "Navigate to Share account" and verified the following tabs 
	            |4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx| Modify Transaction1 |
  
  Then I "Close Share account" and verified the following tabs
                |4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx| Modify Transaction2 |
  And I verified the "Share Transaction" details successfully 
	  			|4806-SUBMITSA01JAN2015(MINACTPRD-30DAYS)-APRACT01JAN2015-INITDVD-closeSA.xlsx|
	 			