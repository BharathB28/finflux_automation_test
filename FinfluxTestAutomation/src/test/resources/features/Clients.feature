Feature:ClientSpecific-SanityTestScenarios

Background:
	Given I navigate to mifos using "default9#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully

@RunnerClassClientsSpecific		
Scenario: 4900-SUBMIT-MODAPP-VERIFY  
 Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
 And I modify New Account from "ModifyLoan" sheet
	 | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
 Then I verified the "Summary" details successfully 
	 | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
 And I verified the "Repayment Schedule" details successfully 
	 | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
	 
@RunnerClassClientsSpecific	 
Scenario: 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY  
 Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "ModifyLoan" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "UndoApprove" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "UndoDisb" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 Then I verified the "Summary" details successfully 
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I verified the "Repayment Schedule" details successfully 
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "Disbures2tranche" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I modify New Account from "UndoDisb2tranche" sheet
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 Then I verified the "Summary" details successfully 
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |
 And I verified the "Repayment Schedule" details successfully 
	 | 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY.xlsx |

@RunnerClassClientsSpecific	 
Scenario: 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt  
 Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I modify New Account from "ModifyLoan" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I modify New Account from "UndoApprove" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I modify New Account from "UndoDisb" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I modify New Account from "Disbures2tranche" sheet
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 Then I verified the "Summary" details successfully 
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 And I verified the "Repayment Schedule" details successfully 
	 | 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |

@RunnerClassClientsSpecific
Scenario: 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4903-DISB-REPAYMENT-EXACTDATE-LessAmt.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx|Input|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 And I verified the "Transactions" details and read the transaction Id 
	 |4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx|
 And I Navigate to Accounting web page
 And I search with transaction id & verified the accounting entries
	 |4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Periodic|

@RunnerClassClientsSpecific
Scenario: 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4904-DISB-REPAYMENT-EARLYDATE-LessAmt.xlsx|Input|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
 Then I make repayment and verified the following tabs
     |4904-DISB-REPAYMENT-EARLYDATE-MoreAmt.xlsx|Input|Repay1|Repay2|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 And I verified the "Transactions" details and read the transaction Id 
	 |4904-DISB-REPAYMENT-EARLYDATE-MoreAmt.xlsx|

@RunnerClassClientsSpecific
Scenario: 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-ExactDate-ExactAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-ExactDate-LessAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-ExactDate-MoreAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-EarlyDate-ExactAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-EarlyDate-LessAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-EarlyDate-MoreAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-LateDate-ExactAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-LateDate-LessAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4905-DISB-REPAYMENT-LateDate-MoreAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|
 Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 And I verified the "Transactions" details and read the transaction Id 
	 |4905-DISB-REPAYMENT-LateDate-MoreAmt-waiveInterest.xlsx|

@RunnerClassClientsSpecific
Scenario: 4906-DISB-1st&2ndREPAYMENT-Writeoff  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx |
 Then I make repayment and verified the following tabs
     |4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx|Input|Repay1|Repay2|
 Then I "Writeoff" and verified the following tabs
     |4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx |
 Then I make repayment and verified the following tabs
     |4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|Input|Repay1|Summary|Repayment Schedule|Transactions|
 Then I "Writeoff" and verified the following tabs
     |4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|Modify Transaction|
 Then i validate and Verify from "Output" sheet
     |4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|

@RunnerClassClientsSpecific	 
Scenario: 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
 Then I make repayment and verified the following tabs
     |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Input|Repay1|
 And I modify New Account from "Disbures2tranche" sheet
	 | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
 Then I "Writeoff" and verified the following tabs
     |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Modify Transaction|Summary|Repayment Schedule|Transactions|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Modify Transaction1|
 Then I verified the following Tabs details successfully
	 |4908-DISB-1st&2ndRepaymentWithMoreAmount.xlsx|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific	 
Scenario: 4909-DISB-WaiveInterest-Writeoff  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4909-DISB-WaiveInterest-Writeoff.xlsx |
 Then I "WaiveInterest&MakeReapyment" and verified the following tabs
     | 4909-DISB-WaiveInterest-makerepaymemt.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4909-DISB-WaiveInterest-Writeoff.xlsx |
 Then I "WaiveInterest&Writeoff" and verified the following tabs
     | 4909-DISB-WaiveInterest-Writeoff.xlsx|Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4910-DISB-MakeRepayment-WaiveInterest-Preclose  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4910-DISB-MakeRepayment-WaiveInterest-Preclose.xlsx |
 Then I "WaiveInterest&MakeReapyment" and verified the following tabs
     | 4910-DISB-MakeRepayment-WaiveInterest-Preclose.xlsx|Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction4|Modify Transaction3|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-ExactAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-LessAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction|Summary|Repayment Schedule|Transactions|
 And I modify New Account from "UndoDisb" sheet
	 | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
 Then I "MakeReapyment&WaiveInterest" and verified the following tabs
     |4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-MoreAmt-waiveInterest.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific	 
Scenario: 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx |
 Then I "MakeReapyment&WaiveInterest&writeoff" and verified the following tabs
     | 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific	 
 Scenario: 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
 Then I "MakeReapyment&WaiveInterest&Preclose" and verified the following tabs
     | 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 |4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx|Modify Transaction1|
 Then I verified the following Tabs details successfully
	 |4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose-verify.xlsx|Summary|Repayment Schedule|Transactions|
 
 @RunnerClassClientsSpecific
 Scenario: 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo.xlsx |
 Then I "MakeReapyment&WaiveInterest&writeoff" and verified the following tabs
     | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction|Modify Transaction4|Summary|Repayment Schedule|Transactions|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo1stRepayment.xlsx|Modify Transaction|Summary|Repayment Schedule|
 Then I "undo transaction from transaction tab" and verified the following tabs
	 | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo2ndRepayment.xlsx|Modify Transaction|Summary|Repayment Schedule|
 
 @RunnerClassClientsSpecific
Scenario: 4915-CollectInterestUpfrontForSingleTranche
  Given I setup the product loan "Setup"
	 | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductLoanInput" Sheet
	 | 4915-CollectInterestUpfrontForSingleTranche.xlsx|
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4915-CollectInterestUpfrontForSingleTranche.xlsx |
  Then I verified the following Tabs details successfully
     | 4915-CollectInterestUpfrontForSingleTranche.xlsx|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche-RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche&RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb&RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb&CollectInterestUpfront.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4915-CollectInterestUpfrontForSingleTranche&DiscountOnDisb&CollectInterestUpfront.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4916-CollectInterestUpfrontForMultiTranche
  
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4916-CollectInterestUpfrontForMultiTranche.xlsx |
  Then I verified the following Tabs details successfully
     | 4916-CollectInterestUpfrontForMultiTranche.xlsx|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche&RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche&RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&RepaymentDateOnDisbDate.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&CollectInterestUpfront.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&CollectInterestUpfront-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "UndoDisburse" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche&DiscountOnDisb&CollectInterestUpfront.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4916-CollectInterestUpfrontForMultiTranche&DiscountOnDisb&CollectInterestUpfront-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4917-DisbursementAfterMaturityDate
  Given I setup the product loan "Setup"
	 | Productloannavigation.xlsx |
  Then I entered the values into product from "ProductLoanInput" Sheet
	 | 4917-DisbursementAfterMaturityDate.xlsx|
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4917-DisbursementAfterMaturityDate.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4917-DisbursementAfterMaturityDate.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4917-DisbursementAfterMaturityDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4918-DisbursementAfterMaturityDate-DiscountonDisbursal
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  
@RunnerClassClientsSpecific  
Scenario: 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeReapyment" and verified the following tabs
	 | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest-MakeRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|

@RunnerClassClientsSpecific  
Scenario: 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeReapyment" and verified the following tabs
	 | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-MakeRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount.xlsx |
  Then I "MakeReapymentTillMaturityDate" and verified the following tabs
	 | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction6|Modify Transaction3|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|
  And I "Disburse2ndTranche" and verified the following tabs
	 | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "Writeoff" and verified the following tabs
	 | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount-Writeoff.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  
 @RunnerClassClientsSpecific
 Scenario: 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |
  Then I verified the following Tabs details successfully
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment" and verified the following tabs
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "UndoRepayment" and verified the following tabs
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
  Then I "AgainMakeRepayment" and verified the following tabs
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Again1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeRepayment" and verified the following tabs
	 | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific	 
Scenario: 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff.xlsx |
  Then I "MakeRepayment" and verified the following tabs
	 | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  And I "waive&writeoff" and verified the following tabs
	 | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff-2.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose.xlsx |
  Then I "MakeRepayment&waive&foreclose" and verified the following tabs
	 | 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |
  And I "MakeRepayment" and verified the following tabs
	 | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "UndoRepayment" and verified the following tabs
	 | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
  Then I "MakeRepayment" and verified the following tabs
	 | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |
  And I "MakeRepayment" and verified the following tabs
	 | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "UndoRepayment" and verified the following tabs
	 | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
  Then I "MakeRepayment" and verified the following tabs
	 | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|

#Scenario: 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment
 # Given I setup the clients
 # When I entered the values into client from "Input" sheet
#	 |Createclient.xlsx|
 # When I set up the new create loan from "NewLoanInput" sheet
#	 | 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |
  #And I "MakeRepayment" and verified the following tabs
#	 | 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
 # Then I "UndoRepayment" and verified the following tabs
#	 | 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
#  Then I "MakeRepayment" and verified the following tabs
#	 | 4927-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|
 
@RunnerClassClientsSpecific
Scenario: 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst.xlsx |
  And I "MakeRepayment" and verified the following tabs
	 | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "UndoRepayment" and verified the following tabs
	 | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst-Undo1stRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|
  Then I "MakeRepayment" and verified the following tabs
	 | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction4|Modify Transaction5|Modify Transaction6|Modify Transaction7|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose.xlsx |
  Then I verified the following Tabs details successfully
	 | 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose.xlsx |Summary|Repayment Schedule|Transactions|
  Then I "UndoDisb&DisbWithChangedDates" and verified the following tabs
	 | 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose-undoDisb.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeRepayment&WaiveInterest&Foreclose" and verified the following tabs
	 | 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose-repay.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4930-DB-FortNight-Disb-Repayment-WaiveInterest-Preclose
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4930-DB-FortNight-Disb-Repayment-WaiveInterest-Preclose.xlsx |
  Then I verified the following Tabs details successfully
	 | 4930-DB-FortNight-Disb-Repayment-WaiveInterest-Preclose.xlsx |Summary|Repayment Schedule|Transactions|
  Then I "MakeRepayment&WaiveInterest&Foreclose" and verified the following tabs
	 | 4930-DB-FortNight-Disb-Repayment-WaiveInterest-Preclose-repay.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Summary|Repayment Schedule|Transactions|

 
@RunnerClassClientsSpecific
Scenario: 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche.xlsx |
  And I "MakeRepayment" and verified the following tabs
	 | 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
  Then I "Disburse2ndTranche" and verified the following tabs
	 | 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeRepayment" and verified the following tabs
	 | 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|


@RunnerClassClientsSpecific
Scenario: 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche.xlsx |
  And I "MakeRepayment" and verified the following tabs
	 | 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
  Then I "Disburse2ndTranche" and verified the following tabs
	 | 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeRepayment" and verified the following tabs
	 | 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche.xlsx |
  Then I verified the following Tabs details successfully
	 | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment" and verified the following tabs
	 | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche-MakeRepayment1.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
  Then I "Disburse2ndTranche" and verified the following tabs
	 | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche-Disburse2ndTranche.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
  Then I "MakeRepayment" and verified the following tabs
	 | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche-MakeRepayment2.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4934-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4934-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche.xlsx |
  And I "WaiveInterest&MakeRepayment" and verified the following tabs
	 | 4934-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
  And I "Writeoff" and verified the following tabs
	 | 4934-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche-writeoff.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1.xlsx |
  Then I verified the following Tabs details successfully
	 | 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&preclose" and verified the following tabs
	 | 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1-preclose.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4936-Mifos-EI-FL-SAR-Charges
  Then I navigate to scheduler job & execute "Apply Penalty For Broken Periods"
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4936-Mifos-EI-FL-SAR-Charges.xlsx |
  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
  Then I verified the following Tabs details successfully
	 | 4936-Mifos-EI-FL-SAR-Charges.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4936-Mifos-EI-FL-SAR-Charges-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|
  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
  Then I verified the following Tabs details successfully
     | 4936-Mifos-EI-FL-SAR-Charges-MakeRepayment.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&preclose" and verified the following tabs
	 | 4936-Mifos-EI-FL-SAR-Charges-preclose.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|

@RunnerClassClientsSpecific
Scenario: 4937-Mifos-EI-DB-SAR-Charges
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4937-Mifos-EI-DB-SAR-Charges.xlsx |
  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
  Then I verified the following Tabs details successfully
	 | 4937-Mifos-EI-DB-SAR-Charges.xlsx |Summary|Repayment Schedule|
  And I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4937-Mifos-EI-DB-SAR-Charges-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|
  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
  Then I verified the following Tabs details successfully
     | 4937-Mifos-EI-DB-SAR-Charges-MakeRepayment.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&preclose" and verified the following tabs
	 | 4937-Mifos-EI-DB-SAR-Charges-preclose.xlsx |Modify Transaction|
  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
  And I "preclose" and verified the following tabs
     | 4937-Mifos-EI-DB-SAR-Charges-preclose.xlsx |Modify Transaction1|Summary|Repayment Schedule|Transactions|
 
 @RunnerClassClientsSpecific
Scenario: 4938-Mifos-EI-DB-SAR-Charges
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4938-Mifos-EI-DB-SAR-Charges.xlsx |
  Then I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4938-Mifos-EI-DB-SAR-Charges.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
  Then I verified the following Tabs details successfully
	 | 4938-Mifos-EI-DB-SAR-Charges-MakeRepayment.xlsx |Summary|Repayment Schedule|Transactions|
  And I "writeoff" and verified the following tabs
	 | 4938-Mifos-EI-DB-SAR-Charges-writeoff.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
   

################################################### 	DIGAMBAR   #############################################################


@RunnerClassClientsSpecific 
Scenario: 4963-BulkJLGLOANon01JAN201-DISBLOAN
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 			|4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx|
	 Then I entered the values into group from "Group" sheet
                |4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input1" sheet
	 	        |4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx|
	 Then I entered the values into client from "Input2" sheet
	 	        |4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx|
	 When I set up the new create loan from "BulkJLGLoanInput" sheet
	  			|4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx|
	 Then I disburse loan from "ToClient1" sheet
	  			|4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx|
	 Then I verified the following Tabs details successfully 
	    		|4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I disburse loan from "ToClient2" sheet
	  			|4963-BulkJLGLOANon01JAN201-DISBLOAN-2ndClient.xlsx|
	 Then I verified the following Tabs details successfully 
	    		|4963-BulkJLGLOANon01JAN201-DISBLOAN-2ndClient.xlsx|Summary|Repayment Schedule|Transactions|
	 
@RunnerClassClientsSpecific 
Scenario: 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 			|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I entered the values into group from "Group" sheet
                |4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input1" sheet
	 	        |4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I entered the values into client from "Input2" sheet
	 	        |4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I entered the values into client from "Input3" sheet
	 	        |4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 When I set up the new create loan from "BulkJLGLoanInput" sheet
	  			|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I disburse loan from "ToClient1" sheet
	  			|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I verified the following Tabs details successfully 
	    		|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I disburse loan from "ToClient2" sheet
	  			|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1-2ndClient.xlsx|
	 Then I verified the following Tabs details successfully 
	    		|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1-2ndClient.xlsx|Summary|Repayment Schedule|


################################################### 	SECDEP   #############################################################

	 
@RunnerClassClientsSpecific 
Scenario: 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt
     
     Given I setup the "RecurringDeposit" product
				| Productloannavigation.xlsx |
	  Then I entered the values into product from "ProductRDInput" Sheet
				|4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx|
	  Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 	  And I modify New Account from "ModifyLoan" sheet
	 			| 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 	  And I modify New Account from "UndoApprove" sheet
	 			| 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 	  And I modify New Account from "UndoDisb" sheet
	 			| 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 	  Then I verified the "Summary" details successfully 
	 			| 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
 	  And I verified the "Repayment Schedule" details successfully 
	 			| 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
	  And I "MakeRepayment" and verified the following tabs
	 			| 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt-MakeRepayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
 
 @RunnerClassClientsSpecific 			
 Scenario: 4966-DISBL-MakeRepayment-waiveInterest-foreclose
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
 	  Then I verified the "Summary" details successfully 
	 			|4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
 	  And I verified the "Repayment Schedule" details successfully 
	 			|4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
	  And I "MakeRepayment&Waive" and verified the following tabs
	 			|4966-DISBL-MakeRepayment-waiveInterest-foreclose-MakeRepayment.xlsx |Modify Transaction1|Modify Transaction|Summary|Repayment Schedule|Transactions|
  	  And I "MakeRepayment&Foreclose" and verified the following tabs
	 			|4966-DISBL-MakeRepayment-waiveInterest-foreclose-foreclose.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
  		
 @RunnerClassClientsSpecific
Scenario: 4967-DISBL-waiveInterest-MakeRepayment-writeoff
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx |
	  And I "MakeRepayment&Waive" and verified the following tabs
	 			|4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
  	 
@RunnerClassClientsSpecific
Scenario: 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx |
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx| Recurring Navigate |
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx|
	  Then I navigate To Loan Account Page
	  And I modify New Account from "UndoDisb" sheet
	 			| 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction-UndoDisb.xlsx |
 	  Then I "Navigate to RD account" and verified the following tabs 
	            |4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction-UndoDisb.xlsx| Recurring Navigate |
	  And I verified the "RecurringDeposit Summary" details successfully 
	  			|4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction-UndoDisb.xlsx|
	  And I verified the "RecurringDeposit Transaction R" details successfully 
	  			|4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction-UndoDisb.xlsx|
	  
@RunnerClassClientsSpecific
Scenario: 4969-ModifyApplication-DISBLOAN-VerifyRDTransaction
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx |
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx| Recurring Navigate |
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx|
 
@RunnerClassClientsSpecific
Scenario: 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx |
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx| Recurring Navigate |
	  And I verified the "RD Transaction & TransID" details successfully 
	  			|4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx| Deposit1|
	  Then I navigate To Loan Account Page
	  Then I verified the "Transactions" details and read the transaction Id
	  			|4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx|Acc_Disbursement|Acc_Disbursement1|Acc_RepaymentDisbursement|

@RunnerClassClientsSpecific
Scenario: 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|
	  Then I verified the "Summary" details successfully 
	 			|4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	 			|4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx| Recurring Navigate |
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|
 	  And I verified the "TransferDetails" details successfully 
	  			|4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|
      And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx|

@RunnerClassClientsSpecific
Scenario: 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx|
	  When I set up the new create RD account from "NewRDInput1" sheet
	  			|4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
	  And I modify New Account from "UndoDisb" sheet
	 			|4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
 	  Then I "Navigate to RD account" and verified the following tabs 
	            |4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx| Recurring Navigate |
	  And I verified the "RecurringDeposit Transaction R" details successfully 
	  			|4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx|
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx| Recurring Navigate1 |
	  And I verified the "RecurringDeposit Transaction" details successfully 
	  			|4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx|

@RunnerClassClientsSpecific
Scenario: 4973-DISBLOAN-MakeRepayment-JouranlEntries
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx |
	  And I "MakeRepayment&Foreclose" and verified the following tabs
	 			|4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|
	  Then I verified the "Transactions" details and read the transaction Id
	  			|4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx|Acc_Disbursement|Acc_Disbursement1|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|
	  Then I "Navigate to RD account" and verified the following tabs 
	            |4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx| Recurring Navigate |
	  And I verified the "RD Transaction & TransID" details successfully 
	  			|4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx| Deposit1|

@RunnerClassClientsSpecific
Scenario: 4983-DISBLOAN-VerifyTransaction-JouranlEntries
      Given I Navigate to System Configuration web page & "enable" "paymenttype-applicable-for-disbursement-charges"
      Given I setup the center
      When I entered the values into center from "Input" sheet
	 			|4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx|
	  Then I entered the values into group from "Group" sheet
                |4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx|
	  When I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|
	  When I set up the new create RD account from "NewRDInput" sheet
	  			|4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	 			|4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx |
	  Then I verified the "Transactions" details and read the transaction Id
	  			|4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx|			
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx|Acc_Disbursement|Acc_Disbursement1|Acc_RepaymentDisbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|


@RunnerClassClientsSpecific 
Scenario: 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet
      Given I Navigate to System Configuration web page & "enable" "include-client-charges-in-collection-sheet"
      Given I setup the center
	  When I entered the values into center from "Input" sheet
	 			|4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx|
	  Then I entered the values into group from "Group" sheet
     			|4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx|		  								  				  				  			
	  Then I entered the values into client from "Input" sheet
	 			|Createclient.xlsx|	 				  								  				  				  			
	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx |
 	  Then I "Add client charge" and verified the following tabs 
	            |4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx|Modify Transaction |
	  Then I navigate to scheduler job & execute "Apply Recurring Charge On Client"
	  Then I "Navigate to client and Verify Charge Overview" and verified the following tabs 
	            |4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx|Modify Transaction1 |
	  And I verified the "Reccuring Client Data" details successfully 
	  			|4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx|
	  Then I navigate to collection Sheet
	  Then I "Pay Reccuring Charge" and verified the following tabs 
	            |4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx| Modify Transaction2|
	  Then I "Navigate to client and Verify Charge Overview" and verified the following tabs 
	            |4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx|Modify Transaction1 |
	  And I verified the "Reccuring Charges Transaction" details successfully 
	  			|4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx|
	  And I Navigate to Accounting web page
	  Then I search with transaction id & verified the accounting entries
	   			|4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx| ClientChargeAccural|


################################################### 	GLIM LOANS   #############################################################


@RunnerClassClientsSpecific	   			
Scenario: 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input4" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input5" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input6" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|	
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  Then I verified the "Summary" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  Then I verified the "GlimOfClient6" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
 	  And I verified the "ChargesTab" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
      And I verified the "GlimRepaymentScheduleOfClient1" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient2" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient3" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient4" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient5" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient6" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I modify New Account from "UndoDisb" sheet 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	   Then I verified the "Summary" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
 	  And I verified the "ChargesTab" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
      And I verified the "GlimRepaymentScheduleOfClient1" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient2" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient3" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient4" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient5" details successfully 
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|

@RunnerClassClientsSpecific
Scenario: 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
	  When I entered the values into client from "Input4" sheet
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
	  When I entered the values into client from "Input5" sheet
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
	  When I entered the values into client from "Input6" sheet
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|	
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
	  Then I disburse loan from "GlimLoanInput1" sheet
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
	  Then I "MakeRepayment" and verified the following tabs
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
 	  And I verified the "ChargesTab" details successfully 
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
	  And I verified the "Transactions" details and read the transaction Id 
	 			|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|
      And I Navigate to Accounting web page
      And I search with transaction id & verified the accounting entries
				|4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|

@RunnerClassClientsSpecific
Scenario: 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input4" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input5" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  Then I "WaiveIterest&MakeRepayment" and verified the following tabs
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
 	  And I verified the "ChargesTab" details successfully 
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  And I verified the "Transactions" details and read the transaction Id 
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
      And I Navigate to Accounting web page
      And I search with transaction id & verified the accounting entries
				|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|

@RunnerClassClientsSpecific
Scenario: 4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input4" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input5" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx|
	  Then I "MakeRepayment&WaiveIterest&waiveCharge" and verified the following tabs
	 			|4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx|
 	  And I verified the "ChargesTab" details successfully 
	 			|4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx|

@RunnerClassClientsSpecific
Scenario: 4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input4" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input5" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx|
	  Then I "MakeRepayment&WaiveIterest&waiveCharge" and verified the following tabs
	 			|4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx|
 	  And I verified the "ChargesTab" details successfully 
	 			|4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx|

@RunnerClassClientsSpecific
Scenario: 4995-GlimLoan-Disburse-Prepay-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input4" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input5" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx|
	  Then I "Prepay1client" and verified the following tabs
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx|
	  And I verified the "ChargesTab" details successfully 
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx|
	  Then I "OverRepaymentFor1client" and verified the following tabs
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepay1client.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepay1client.xlsx|
	  Then I "PrepayAllclient" and verified the following tabs
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs-prepayAllClient.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs-prepayAllClient.xlsx|
	  Then I "OverRepaymentForAllclient" and verified the following tabs
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx|
 	  And I verified the "ChargesTab" details successfully 
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx|
	  And I verified the "Transactions" details and read the transaction Id 
	 			|4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx|
      And I Navigate to Accounting web page
      And I search with transaction id & verified the accounting entries
				|4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|

@RunnerClassClientsSpecific
Scenario: 4996-GlimLoan-Disburse-Writeoff-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input4" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input5" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx|
	  Then I "Writeoff1client" and verified the following tabs
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx|
	  And I verified the "ChargesTab" details successfully 
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx|
	  Then I "RecoverRepaymentFor1client" and verified the following tabs
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepayment1client.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepayment1client.xlsx|
	  Then I "WriteoffAllclient" and verified the following tabs
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-WriteoffAllclient.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-WriteoffAllclient.xlsx|
	  Then I "RecoverRepaymentForAllclient" and verified the following tabs
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx|
 	  And I verified the "ChargesTab" details successfully 
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx|
	  And I verified the "Transactions" details and read the transaction Id 
	 			|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx|
      And I Navigate to Accounting web page
      And I search with transaction id & verified the accounting entries
				|4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|

@RunnerClassClientsSpecific
Scenario: 4997-GlimLoan-Disburse-Writeoff-Repayment
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input4" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I entered the values into client from "Input5" sheet
	 			|4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx|
	  Then I "Writeoff1client" and verified the following tabs
	 			|4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx |Modify Transaction|
	  Then I "MakeRepayment" and verified the following tabs
	 			|4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx |Modify Transaction1|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx|
	  Then I "UndoRepayment" and verified the following tabs
	 			|4997-GlimLoan-Disburse-Writeoff-Repayment-Undo.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
	  Then I verified the "GlimOfClient5" details successfully 
	 			|4997-GlimLoan-Disburse-Writeoff-Repayment-Undo.xlsx|
	  And I verified the "Transactions" details and read the transaction Id 
	 			|4997-GlimLoan-Disburse-Writeoff-Repayment-Undo.xlsx|
      And I Navigate to Accounting web page
      And I search with transaction id & verified the accounting entries
				|4997-GlimLoan-Disburse-Writeoff-Repayment-Undo.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|

@RunnerClassClientsSpecific
Scenario: 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs
      Given I Navigate to System Configuration web page & "enable" "glim-payment-as-group"
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  Then I verified the "Summary" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  Then I verified the "GlimOfClient3" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
 	  And I verified the "GlimRepaymentScheduleOfClient1" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient2" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient3" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  And I modify New Account from "UndoDisb" sheet 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  Then I verified the "Summary" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
 	  And I verified the "Repayment Schedule" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  Then I verified the "GlimOfClient3" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
 	  And I verified the "GlimRepaymentScheduleOfClient1" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient2" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  And I verified the "GlimRepaymentScheduleOfClient3" details successfully 
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx|
	  Then I "MakeRepayment" and verified the following tabs
	 			|4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-repayment.xlsx |Modify Transaction|Summary|Repayment Schedule|

@RunnerClassClientsSpecific
      Scenario: 4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx|
	  Then I "MakeRepayment&WaiveInterst&MakeRepayment" and verified the following tabs
	 			|4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|
 	  Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	  And I verified the "Transactions" details and read the transaction Id 
	 			|4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx|
      And I Navigate to Accounting web page
      And I search with transaction id & verified the accounting entries
				|4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|

@RunnerClassClientsSpecific
Scenario: 5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx|
	  Then I "WaiveInterst&MakeRepayment&WriteOff" and verified the following tabs
	 			|5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|
 	  Then I "RecoverPayment" and verified the following tabs
	 			|5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs-recover.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
 	  Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	  And I verified the "Transactions" details and read the transaction Id 
	 			|5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx|
      And I Navigate to Accounting web page
      And I search with transaction id & verified the accounting entries
				|5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|

@RunnerClassClientsSpecific
Scenario: 5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs.xlsx|
	  Then I "MakeRepayment&WaiveInterst&Prepay" and verified the following tabs
	 			|5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Summary|Repayment Schedule|Transactions|
 	  Then I "MakeOverRePayment" and verified the following tabs
	 			|5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs-MakeRePayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
 	  Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	  And I verified the "Transactions" details and read the transaction Id 
	 			|5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs-MakeRePayment.xlsx|
      And I Navigate to Accounting web page
      And I search with transaction id & verified the accounting entries
				|5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs-MakeRePayment.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|

@RunnerClassClientsSpecific
Scenario: 5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs
      Given I setup the group
      When I entered the values into group from "Group" sheet
      			|5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs.xlsx |
      When I entered the values into client from "Input1" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I entered the values into client from "Input2" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|	
	  When I entered the values into client from "Input3" sheet
	 			|4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx|
	  When I set up the new create loan from "GlimLoanInput" sheet
	 			|5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs.xlsx|
	  And I verified the "ChargesTab" details successfully 
	 			|5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs.xlsx|
	  Then I "WaiveCharge" and verified the following tabs
	 			|5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs.xlsx |Charges|Summary|Repayment Schedule|Transactions|
 	  Then I "MakeRePayment" and verified the following tabs
	 			|5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs-Repayment.xlsx |Modify Transaction|Summary|Repayment Schedule|Transactions|
 	  And I verified the "ChargesTab" details successfully 
	 			|5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs-Repayment.xlsx|

@RunnerClassClientsSpecific
Scenario: 5038-Nabkisan-Componding-penality-Charge-loan
      Given I setup the product loan "Setup"
	 			| Productloannavigation.xlsx |
  	  Then I entered the values into product from "ProductLoanInput" Sheet
	 			| 5038-Nabkisan-Componding-penality-Charge-loan.xlsx|
	  Then I navigate to scheduler job & execute "Apply Penalty For Broken Periods"
  	  Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5038-Nabkisan-Componding-penality-Charge-loan.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5038-Nabkisan-Componding-penality-Charge-loan.xlsx|Modify Transaction1|Summary|Original Schedule|Repayment Schedule|Transactions|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx|
	  And I Navigate to Accounting web page
  	  And I search with transaction id & verified the accounting entries
     			| 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx|Acc_Disbursement|Acc_Periodic|
      Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5038-Nabkisan-Componding-penality-Charge-loan-3rdInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5038-Nabkisan-Componding-penality-Charge-loan-3rdInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-3rdInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-3rdInstallment.xlsx|
	  And I "Disburse 2nd tranche" and verified the following tabs
	            | 5038-Nabkisan-Componding-penality-Charge-loan-Disb2ndTranche.xlsx|Modify Transaction|Summary|Original Schedule|Repayment Schedule|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5038-Nabkisan-Componding-penality-Charge-loan-4thInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5038-Nabkisan-Componding-penality-Charge-loan-4thInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-4thInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-4thInstallment.xlsx|
	  And I "WaiveInterest" and verified the following tabs
	            | 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx|Modify Transaction|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx|
	  And I "UndoDisburse and Disburse" and verified the following tabs
	            | 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx|Modify Transaction|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx|

@RunnerClassClientsSpecific
Scenario: 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod.xlsx|Modify Transaction1|Summary|Original Schedule|Repayment Schedule|Transactions|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-2ndInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-2ndInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-2ndInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-2ndInstallment.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-3rdInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-3rdInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-3rdInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-3rdInstallment.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-4thInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-4thInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-4thInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-4thInstallment.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-5thInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-5thInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-5thInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-5thInstallment.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-6thInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-6thInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-6thInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-6thInstallment.xlsx|

@RunnerClassClientsSpecific
Scenario: 5040-CompondingPenalityCharge-MakeRepayment
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5040-CompondingPenalityCharge-MakeRepayment.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5040-CompondingPenalityCharge-MakeRepayment.xlsx|Modify Transaction1|Summary|Original Schedule|Repayment Schedule|Transactions|
	  And I verified the "ChargesTab" details successfully 
	 			| 5040-CompondingPenalityCharge-MakeRepayment.xlsx|
	  Then I "MakeRepayment on Exacttime and amount" and verified the following tabs
	 			|5040-CompondingPenalityCharge-MakeRepayment-1stRepayment.xlsx |Modify Transaction|Summary|Original Schedule|Repayment Schedule|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx|
	  Then I "MakeRepayment on Exacttime and less amount" and verified the following tabs
	 			| 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx|
	  Then I "MakeRepayment on Exacttime and More amount" and verified the following tabs
	 			| 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|
	  Then I "MakeRepayment on Early and exactamount" and verified the following tabs
	 			| 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx|
	  Then I "MakeRepayment on Early and Lessamount" and verified the following tabs
	 			| 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx|
	  Then I "MakeRepayment on Early and Moreamount" and verified the following tabs
	 			| 5040-CompondingPenalityCharge-MakeRepayment-6thRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5040-CompondingPenalityCharge-MakeRepayment-6thRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5040-CompondingPenalityCharge-MakeRepayment-6thRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      Then I verified the "Transactions" details and read the transaction Id 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-6thRepayment.xlsx|
	  And I "Disburse 2nd tranche" and verified the following tabs
	            | 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx|Modify Transaction|
	  Then I "MakeRepayment on Late and Exactamount" and verified the following tabs
	 			| 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx |Modify Transaction1|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx|Modify Transaction2|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx|Summary|Original Schedule|Repayment Schedule|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx|

@RunnerClassClientsSpecific
Scenario: 5041-CompondingPenalityCharge-MakeRepayment
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5041-CompondingPenalityCharge-MakeRepayment.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5041-CompondingPenalityCharge-MakeRepayment.xlsx|Modify Transaction1|Summary|Original Schedule|Repayment Schedule|Transactions|
	  And I verified the "ChargesTab" details successfully 
	 			| 5041-CompondingPenalityCharge-MakeRepayment.xlsx|
	  Then I "MakeRepayment on Late and excatamount" and verified the following tabs
	 			|5041-CompondingPenalityCharge-MakeRepayment-1stRepayment.xlsx |Modify Transaction|Summary|Original Schedule|Repayment Schedule|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx|
	  Then I "MakeRepayment on Late and less amount" and verified the following tabs
	 			| 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx|
	  Then I "Waive Charge" and verified the following tabs
	 			| 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx |Charges|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx|
	  Then I "MakeRepayment on Late and More amount" and verified the following tabs
	 			| 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|
	  And I Navigate to Accounting web page
  	  And I search with transaction id & verified the accounting entries
     			| 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx|Acc_Disbursement|Acc_Repayment10|Acc_Repayment|Acc_Repayment3|Acc_Repayment1|Acc_Repayment4|Acc_Repayment5|Acc_Repayment6|Acc_Repayment7|Acc_Repayment8|Acc_Repayment9|Acc_Repayment2|

@RunnerClassClientsSpecific
Scenario: 5042-CompondingPenalityCharge-Preclose
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5042-CompondingPenalityCharge-Preclose.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5042-CompondingPenalityCharge-Preclose.xlsx|Modify Transaction1|
      Then I "MakeRepayment on Late and Lessamount" and verified the following tabs
	 			| 5042-CompondingPenalityCharge-Preclose.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5042-CompondingPenalityCharge-Preclose.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5042-CompondingPenalityCharge-Preclose.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5042-CompondingPenalityCharge-Preclose.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5042-CompondingPenalityCharge-Preclose.xlsx|
      Then I "Preclose" and verified the following tabs
	 			| 5042-CompondingPenalityCharge-Preclose-verify.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5042-CompondingPenalityCharge-Preclose-verify.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5042-CompondingPenalityCharge-Preclose-verify.xlsx|Summary|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5042-CompondingPenalityCharge-Preclose-verify.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5042-CompondingPenalityCharge-Preclose-verify.xlsx|

@RunnerClassClientsSpecific
Scenario: 5043-CompondingPenalityCharge-writeoff
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5043-CompondingPenalityCharge-writeoff.xlsx |
	  Then I "MakeRepayment on Late and Moreamount" and verified the following tabs
	 			| 5043-CompondingPenalityCharge-writeoff.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5043-CompondingPenalityCharge-writeoff.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5043-CompondingPenalityCharge-writeoff.xlsx|Summary|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5043-CompondingPenalityCharge-writeoff.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5043-CompondingPenalityCharge-writeoff.xlsx|
      Then I "Writeoff" and verified the following tabs
	 			| 5043-CompondingPenalityCharge-writeoff-verify.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5043-CompondingPenalityCharge-writeoff-verify.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5043-CompondingPenalityCharge-writeoff-verify.xlsx|Summary|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5043-CompondingPenalityCharge-writeoff-verify.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5043-CompondingPenalityCharge-writeoff-verify.xlsx|

@RunnerClassClientsSpecific
Scenario: 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2.xlsx|Modify Transaction1|Summary|Original Schedule|Repayment Schedule|Transactions|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndInstallment.xlsx|
      And I "WaiveInterest" and verified the following tabs
	            | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx|Modify Transaction|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdInstallment.xlsx|
	  And I "Disburse 2nd tranche" and verified the following tabs
	            | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx|Modify Transaction|Summary|Original Schedule|Repayment Schedule|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thInstallment.xlsx|
	  And I "UndoDisburse and Disburse" and verified the following tabs
	            | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx|Modify Transaction|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx|

@RunnerClassClientsSpecific
Scenario: 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod.xlsx|Modify Transaction1|Summary|Original Schedule|Repayment Schedule|Transactions|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-2ndInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-2ndInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-2ndInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-2ndInstallment.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-3rdInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-3rdInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-3rdInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-3rdInstallment.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-4thInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-4thInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-4thInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-4thInstallment.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-5thInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-5thInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-5thInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-5thInstallment.xlsx|
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-6thInstallment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-6thInstallment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-6thInstallment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-6thInstallment.xlsx|

@RunnerClassClientsSpecific
Scenario: 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx |
	  Then I "MakeRepayment 1stRepayment" and verified the following tabs
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx|
	  Then I "MakeRepayment 2ndRepayment" and verified the following tabs
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx|
	  Then I "MakeRepayment on Exacttime and amount" and verified the following tabs
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx|
	  Then I "MakeRepayment on Early and Lessamount" and verified the following tabs
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx|
	  Then I "MakeRepayment on Late and Moreamount" and verified the following tabs
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx|
	  And I "Disburse 2nd tranche" and verified the following tabs
	            | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx|Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx|Summary|Original Schedule|Repayment Schedule|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx|

@RunnerClassClientsSpecific
Scenario: 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx|Modify Transaction1|
      Then I "MakeRepayment on Late and Lessamount" and verified the following tabs
	 			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx|Summary|Original Schedule|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx|
      Then I "Preclose" and verified the following tabs
	 			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx|Summary|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx|

@RunnerClassClientsSpecific
Scenario: 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx |
	  Then I "MakeRepayment on Late and Moreamount" and verified the following tabs
	 			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx|Summary|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx|
      And I "Disburse 2nd tranche" and verified the following tabs
	            | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-Disb2ndTranche.xlsx|Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-Disb2ndTranche.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-Disb2ndTranche.xlsx|Summary|Original Schedule|Repayment Schedule|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-Disb2ndTranche.xlsx|
      Then I "Writeoff" and verified the following tabs
	 			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx |Modify Transaction|
 	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx|Modify Transaction1|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx|Summary|Repayment Schedule|
      And I verified the "ChargesTab" details successfully 
	 			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx|

@RunnerClassClientsSpecific	 			
Scenario: 5049-Nabkisan-CompondingPenalityCharge-subsidy
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx |
	  Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5042-CompondingPenalityCharge-Preclose.xlsx|Modify Transaction1|
      Then I verified the "Summary" details successfully 
	  			| 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx|
	  And I verified the "Repayment Schedule" details successfully 
	  			| 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx|
	  Then I verified the "Transactions" details and read the transaction Id 
	 			| 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx|
	  And I Navigate to Accounting web page
  	  And I search with transaction id & verified the accounting entries
     			| 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|
      Then I navigate To Loan Account Page
      Then I make repayment and read the transaction Id
       			| 5049-Nabkisan-CompondingPenalityCharge-subsidy-Makerepayment1.xlsx|Input|Summary|Original Schedule|Repayment Schedule|Transactions|
      Then I make repayment and read the transaction Id
       			| 5049-Nabkisan-CompondingPenalityCharge-subsidy-Makerepayment2.xlsx|Input|Summary|Repayment Schedule|Transactions|
      Then I "undo transaction from transaction tab" and verified the following tabs
	            | 5049-Nabkisan-CompondingPenalityCharge-subsidy-undoMakerepayment.xlsx|Modify Transaction|Summary|Original Schedule|Repayment Schedule|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
 	  And I verified the "Transactions" details and read the transaction Id 
	 			| 5049-Nabkisan-CompondingPenalityCharge-subsidy-undoMakerepayment.xlsx|
      Then I "Revoke Subsidy" and verified the following tabs
	            | 5049-Nabkisan-CompondingPenalityCharge-subsidy-RevokeSubsidy.xlsx|Modify Transaction|Summary|Original Schedule|Repayment Schedule|
      
@RunnerClassClientsSpecific	 			
Scenario: 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment
            Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 	  When I set up the new create loan from "NewLoanInput" sheet
	 			| 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment.xlsx |
	  Then I make repayment and read the transaction Id
       			| 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment.xlsx|Input|Summary|Original Schedule|Repayment Schedule|Transactions|
      Then I "Add Subsidy" and verified the following tabs
	            | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy.xlsx|Modify Transaction|Modify Transaction1|Summary|Original Schedule|Repayment Schedule|Transactions|
      Then I make repayment and read the transaction Id
       			| 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment1.xlsx|Input|Summary|Original Schedule|Repayment Schedule|Transactions|
      Then I "Disb 2nd Tranche" and verified the following tabs
	            | 5050-Nabkisan-CompondingPenalityCharge-subsidy-disbtranche.xlsx|Modify Transaction|Summary|Original Schedule|Repayment Schedule|Transactions|
      Then I "Add Subsidy" and verified the following tabs
	            | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy2.xlsx|Modify Transaction|
      Given I navigate To "Overdue Charge" Page
  	  Then I "Run OverDue till Date job" and verified the following tabs
     			| 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy2.xlsx|Modify Transaction1|Summary|Original Schedule|Repayment Schedule|Transactions|
      Then I "Revoke Subsidy" and verified the following tabs
	            | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx|Modify Transaction|
      Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
      Then I verified the following Tabs details successfully
     			| 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx|Summary|Original Schedule|Repayment Schedule|
      Then I verified the "Transactions" details and read the transaction Id 
	 			| 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx|
	  And I Navigate to Accounting web page
  	  And I search with transaction id & verified the accounting entries
     			| 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx|Acc_Disbursement|Acc_Repayment|Acc_Repayment1|Acc_Repayment2|Acc_Repayment3|Acc_Repayment4|Acc_Repayment5|Acc_Disbursement1|Acc_Repayment6|Acc_Repayment7|

    	    		    	          	  	             