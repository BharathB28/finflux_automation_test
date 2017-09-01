Feature:ClientSpecific-SanityTestScenarios

Background:
	Given I navigate to mifos using "default9#/"
	And I login into mifos site using "Login" excel sheet
		| Login.xlsx  |
	Then I should see logged in successfully

@RunnerClass2		
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
	 
@RunnerClass2	 
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

@RunnerClass2	 
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

@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2	 
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

@RunnerClass2	 
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

@RunnerClass2
Scenario: 4910-DISB-MakeRepayment-WaiveInterest-Preclose  
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4910-DISB-MakeRepayment-WaiveInterest-Preclose.xlsx |
 Then I "WaiveInterest&MakeReapyment" and verified the following tabs
     | 4910-DISB-MakeRepayment-WaiveInterest-Preclose.xlsx|Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction4|Modify Transaction3|Summary|Repayment Schedule|Transactions|

@RunnerClass2
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

@RunnerClass2	 
Scenario: 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff
 Given I setup the clients
 When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
 When I set up the new create loan from "NewLoanInput" sheet
	 | 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx |
 Then I "MakeReapyment&WaiveInterest&writeoff" and verified the following tabs
     | 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx|Modify Transaction1|Modify Transaction2|Modify Transaction3|Modify Transaction|Modify Transaction4|Modify Transaction5|Summary|Repayment Schedule|Transactions|

@RunnerClass2	 
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
 
 @RunnerClass2
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
 
 @RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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
  
@RunnerClass2  
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

@RunnerClass2  
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

@RunnerClass2
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
  
 @RunnerClass2
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

@RunnerClass2	 
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

@RunnerClass2
Scenario: 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose.xlsx |
  Then I "MakeRepayment&waive&foreclose" and verified the following tabs
	 | 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose.xlsx |Modify Transaction|Modify Transaction1|Modify Transaction2|Modify Transaction3|Summary|Repayment Schedule|Transactions|

@RunnerClass2
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

@RunnerClass2
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
 
@RunnerClass2
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
 
@RunnerClass2
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


@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
Scenario: 4936-Mifos-EI-FL-SAR-Charges
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4936-Mifos-EI-FL-SAR-Charges.xlsx |
  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
  Then I verified the following Tabs details successfully
	 | 4936-Mifos-EI-FL-SAR-Charges.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4936-Mifos-EI-FL-SAR-Charges-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&preclose" and verified the following tabs
	 | 4936-Mifos-EI-FL-SAR-Charges-preclose.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|

@RunnerClass2
Scenario: 4937-Mifos-EI-DB-SAR-Charges
  Given I setup the clients
  When I entered the values into client from "Input" sheet
	 |Createclient.xlsx|
  When I set up the new create loan from "NewLoanInput" sheet
	 | 4937-Mifos-EI-DB-SAR-Charges.xlsx |
  Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
  Then I verified the following Tabs details successfully
	 | 4937-Mifos-EI-DB-SAR-Charges.xlsx |Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&waiveInterest" and verified the following tabs
	 | 4937-Mifos-EI-DB-SAR-Charges-MakeRepayment.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
  And I "MakeRepayment&preclose" and verified the following tabs
	 | 4937-Mifos-EI-DB-SAR-Charges-preclose.xlsx |Modify Transaction|Modify Transaction1|Summary|Repayment Schedule|Transactions|
 
 @RunnerClass2
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

@RunnerClass2 
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
	 
@RunnerClass2 
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
	 
@RunnerClass2 
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
 
 @RunnerClass2 			
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
  		
 @RunnerClass2
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
  	 
@RunnerClass2
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
	  
@RunnerClass2
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
 
@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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

@RunnerClass2
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

 @RunnerClass8 
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
   