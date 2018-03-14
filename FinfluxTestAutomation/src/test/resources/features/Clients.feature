Feature: ClientSpecific-SanityTestScenarios

  Background: 
    Given I navigate to mifos using ":8443/?tenantIdentifier=default9#/"
    And I login into mifos site using "Login" excel sheet
      | Login.xlsx |
    Then I should see logged in successfully

  @RunnerClassClientsSpecificclients
  Scenario: 4900-SUBMIT-MODAPP-VERIFY
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
    And I modify New Account from "ModifyLoan" sheet
      | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
    Then I verified the "Summary" details successfully
      | 4900-SUBMIT-MODAPP-VERIFY.xlsx |
    And I verified the "Repayment Schedule" details successfully
      | 4900-SUBMIT-MODAPP-VERIFY.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 4901-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISB-VERIFY
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
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

  @RunnerClassClientsSpecificclients
  Scenario: 4902-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
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

  @RunnerClassClientsSpecificclients
  Scenario: 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
    Then I make repayment and verified the following tabs
      | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx | Input | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
    Then I make repayment and verified the following tabs
      | 4903-DISB-REPAYMENT-EXACTDATE-LessAmt.xlsx | Input | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4903-DISB-REPAYMENT-EXACTDATE-LessMoreExactAmt.xlsx |
    Then I make repayment and verified the following tabs
      | 4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx | Input | Summary | Repayment Schedule |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    And I verified the "Transactions" details and read the transaction Id
      | 4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 4903-DISB-REPAYMENT-EXACTDATE-MoreAmt.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Periodic |

  @RunnerClassClientsSpecificclients
  Scenario: 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
    Then I make repayment and verified the following tabs
      | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx | Input | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
    Then I make repayment and verified the following tabs
      | 4904-DISB-REPAYMENT-EARLYDATE-LessAmt.xlsx | Input | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4904-DISB-REPAYMENT-EARLYDATE-LessMoreExactAmt.xlsx |
    Then I make repayment and verified the following tabs
      | 4904-DISB-REPAYMENT-EARLYDATE-MoreAmt.xlsx | Input | Repay1 | Repay2 | Summary | Repayment Schedule |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    And I verified the "Transactions" details and read the transaction Id
      | 4904-DISB-REPAYMENT-EARLYDATE-MoreAmt.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-ExactDate-ExactAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-ExactDate-LessAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-ExactDate-MoreAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-EarlyDate-ExactAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-EarlyDate-LessAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-EarlyDate-MoreAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-LateDate-ExactAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-LateDate-LessAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4905-DISB-REPAYMENT-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4905-DISB-REPAYMENT-LateDate-MoreAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    And I verified the "Transactions" details and read the transaction Id
      | 4905-DISB-REPAYMENT-LateDate-MoreAmt-waiveInterest.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 4906-DISB-1st&2ndREPAYMENT-Writeoff
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx |
    Then I make repayment and verified the following tabs
      | 4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx | Input | Repay1 | Repay2 |
    Then I "Writeoff" and verified the following tabs
      | 4906-DISB-1st&2ndREPAYMENT-Writeoff.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx |
    Then I make repayment and verified the following tabs
      | 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx | Input | Repay1 | Summary | Repayment Schedule | Transactions |
    Then I "Writeoff" and verified the following tabs
      | 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx | Modify Transaction |
    Then i validate and Verify from "Output" sheet
      | 4907-DISB-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
    Then I make repayment and verified the following tabs
      | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx | Input | Repay1 |
    And I modify New Account from "Disbures2tranche" sheet
      | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
    Then I "Writeoff" and verified the following tabs
      | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "undo transaction from transaction tab" and verified the following tabs
      | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx | Modify Transaction1 |
    Then I verified the following Tabs details successfully
      | 4908-DISB-1st&2ndRepaymentWithMoreAmount.xlsx | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4909-DISB-WaiveInterest-Writeoff
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4909-DISB-WaiveInterest-Writeoff.xlsx |
    Then I "WaiveInterest&MakeReapyment" and verified the following tabs
      | 4909-DISB-WaiveInterest-makerepaymemt.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4909-DISB-WaiveInterest-Writeoff.xlsx |
    Then I "WaiveInterest&Writeoff" and verified the following tabs
      | 4909-DISB-WaiveInterest-Writeoff.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4910-DISB-MakeRepayment-WaiveInterest-Preclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4910-DISB-MakeRepayment-WaiveInterest-Preclose.xlsx |
    Then I "WaiveInterest&MakeReapyment" and verified the following tabs
      | 4910-DISB-MakeRepayment-WaiveInterest-Preclose.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction4 | Modify Transaction3 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-ExactAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-LessAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I modify New Account from "UndoDisb" sheet
      | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactLateEarlyDate-LessMoreExactAmt-waiveInterest.xlsx |
    Then I "MakeReapyment&WaiveInterest" and verified the following tabs
      | 4911-DISB-MakeREPAYMENT-Disb2ndTranche-ExactDate-MoreAmt-waiveInterest.xlsx | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx |
    Then I "MakeReapyment&WaiveInterest&writeoff" and verified the following tabs
      | 4912-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Writeoff.xlsx | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction | Modify Transaction4 | Modify Transaction5 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx |
    Then I "MakeReapyment&WaiveInterest&Preclose" and verified the following tabs
      | 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction | Modify Transaction4 | Modify Transaction5 | Summary | Repayment Schedule |
    Then I "undo transaction from transaction tab" and verified the following tabs
      | 4908-DISB-1st&2ndRepaymentWithMoreAmount-Preclose.xlsx | Modify Transaction1 |
    Then I verified the following Tabs details successfully
      | 4913-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Preclose-verify.xlsx | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo.xlsx |
    Then I "MakeReapyment&WaiveInterest&writeoff" and verified the following tabs
      | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo.xlsx | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction | Modify Transaction4 | Summary | Repayment Schedule | Transactions |
    Then I "undo transaction from transaction tab" and verified the following tabs
      | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo1stRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule |
    Then I "undo transaction from transaction tab" and verified the following tabs
      | 4914-DISB2ndTranche-1st&2ndRepaymentWithMoreAmount-Undo2ndRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule |

  @RunnerClassClientsSpecificclients
  Scenario: 4915-CollectInterestUpfrontForSingleTranche
    Given I setup the product loan "Setup"
      | Productloannavigation.xlsx |
    Then I entered the values into product from "ProductLoanInput" Sheet
      | 4915-CollectInterestUpfrontForSingleTranche.xlsx |
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4915-CollectInterestUpfrontForSingleTranche.xlsx |
    Then I verified the following Tabs details successfully
      | 4915-CollectInterestUpfrontForSingleTranche.xlsx | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4915-CollectInterestUpfrontForSingleTranche-RepaymentDateOnDisbDate.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4915-CollectInterestUpfrontForSingleTranche&RepaymentDateOnDisbDate.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb&RepaymentDateOnDisbDate.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4915-CollectInterestUpfrontForSingleTranche-DiscountOnDisb&CollectInterestUpfront.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4915-CollectInterestUpfrontForSingleTranche&DiscountOnDisb&CollectInterestUpfront.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4916-CollectInterestUpfrontForMultiTranche
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4916-CollectInterestUpfrontForMultiTranche.xlsx |
    Then I verified the following Tabs details successfully
      | 4916-CollectInterestUpfrontForMultiTranche.xlsx | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-RepaymentDateOnDisbDate.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche&RepaymentDateOnDisbDate.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche&RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&RepaymentDateOnDisbDate.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&RepaymentDateOnDisbDate-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&CollectInterestUpfront.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche-DiscountOnDisb&CollectInterestUpfront-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "UndoDisburse" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche&DiscountOnDisb&CollectInterestUpfront.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4916-CollectInterestUpfrontForMultiTranche&DiscountOnDisb&CollectInterestUpfront-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4917-DisbursementAfterMaturityDate
    Given I setup the product loan "Setup"
      | Productloannavigation.xlsx |
    Then I entered the values into product from "ProductLoanInput" Sheet
      | 4917-DisbursementAfterMaturityDate.xlsx |
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4917-DisbursementAfterMaturityDate.xlsx |
    Then I "MakeReapymentTillMaturityDate" and verified the following tabs
      | 4917-DisbursementAfterMaturityDate.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction5 | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4917-DisbursementAfterMaturityDate-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4918-DisbursementAfterMaturityDate-DiscountonDisbursal
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal.xlsx |
    Then I "MakeReapymentTillMaturityDate" and verified the following tabs
      | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction5 | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4918-DisbursementAfterMaturityDate-DiscountonDisbursal-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest.xlsx |
    Then I "MakeReapymentTillMaturityDate" and verified the following tabs
      | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction5 | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeReapyment" and verified the following tabs
      | 4919-DisbursementAfterMaturityDate-CollectUpfrontInterest-MakeRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule |

  @RunnerClassClientsSpecificclients
  Scenario: 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate.xlsx |
    Then I "MakeReapymentTillMaturityDate" and verified the following tabs
      | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeReapyment" and verified the following tabs
      | 4920-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-MakeRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount.xlsx |
    Then I "MakeReapymentTillMaturityDate" and verified the following tabs
      | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction6 | Modify Transaction3 | Modify Transaction4 | Modify Transaction5 | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche" and verified the following tabs
      | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "Writeoff" and verified the following tabs
      | 4921-DisbursementAfterMaturityDate-FirstRepaymentOnDisbursalDate-CollectUpfrontAmount-Writeoff.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx |
    Then I verified the following Tabs details successfully
      | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment.xlsx | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment" and verified the following tabs
      | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-1stRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "UndoRepayment" and verified the following tabs
      | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Undo1stRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule |
    Then I "AgainMakeRepayment" and verified the following tabs
      | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Again1stRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeRepayment" and verified the following tabs
      | 4922-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction5 | Modify Transaction6 | Modify Transaction7 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff.xlsx |
    Then I "MakeRepayment" and verified the following tabs
      | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "waive&writeoff" and verified the following tabs
      | 4923-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-writeoff-2.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose.xlsx |
    Then I "MakeRepayment&waive&foreclose" and verified the following tabs
      | 4924-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-foreclose.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |
    And I "MakeRepayment" and verified the following tabs
      | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "UndoRepayment" and verified the following tabs
      | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Undo1stRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule |
    Then I "MakeRepayment" and verified the following tabs
      | 4925-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction5 | Modify Transaction6 | Modify Transaction7 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx |
    And I "MakeRepayment" and verified the following tabs
      | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "UndoRepayment" and verified the following tabs
      | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Undo1stRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule |
    Then I "MakeRepayment" and verified the following tabs
      | 4926-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction5 | Modify Transaction6 | Modify Transaction7 | Summary | Repayment Schedule | Transactions |

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
  @RunnerClassClientsSpecificclients
  Scenario: 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst.xlsx |
    And I "MakeRepayment" and verified the following tabs
      | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "UndoRepayment" and verified the following tabs
      | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst-Undo1stRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule |
    Then I "MakeRepayment" and verified the following tabs
      | 4928-FLAT-DB-SAR-PartialPeriod-InitialBrokenPeriod-DistEqualyToAllInst-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Modify Transaction4 | Modify Transaction5 | Modify Transaction6 | Modify Transaction7 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose.xlsx |
    Then I verified the following Tabs details successfully
      | 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose.xlsx | Summary | Repayment Schedule | Transactions |
    Then I "UndoDisb&DisbWithChangedDates" and verified the following tabs
      | 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose-undoDisb.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeRepayment&WaiveInterest&Foreclose" and verified the following tabs
      | 4929-FLAT-FortNight-Disb_Repayment-WaiveInterest-Preclose-repay.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4930-DB-FortNight-Disb-Repayment-WaiveInterest-Preclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4930-DB-FortNight-Disb-Repayment-WaiveInterest-Preclose.xlsx |
    Then I verified the following Tabs details successfully
      | 4930-DB-FortNight-Disb-Repayment-WaiveInterest-Preclose.xlsx | Summary | Repayment Schedule | Transactions |
    Then I "MakeRepayment&WaiveInterest&Foreclose" and verified the following tabs
      | 4930-DB-FortNight-Disb-Repayment-WaiveInterest-Preclose-repay.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Modify Transaction3 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche.xlsx |
    And I "MakeRepayment" and verified the following tabs
      | 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |
    Then I "Disburse2ndTranche" and verified the following tabs
      | 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeRepayment" and verified the following tabs
      | 4931-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-PostInterest-Recal-MultiTranche-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche.xlsx |
    And I "MakeRepayment" and verified the following tabs
      | 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |
    Then I "Disburse2ndTranche" and verified the following tabs
      | 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeRepayment" and verified the following tabs
      | 4932-EI-DB-SAR-PartialPeriod-InitialBrokenPeriod-AddTo1stInstallment-Recal-MultiTranche-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche.xlsx |
    Then I verified the following Tabs details successfully
      | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche.xlsx | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment" and verified the following tabs
      | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche-MakeRepayment1.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |
    Then I "Disburse2ndTranche" and verified the following tabs
      | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche-Disburse2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeRepayment" and verified the following tabs
      | 4933-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche-MakeRepayment2.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4934-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4934-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche.xlsx |
    And I "WaiveInterest&MakeRepayment" and verified the following tabs
      | 4934-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |
    And I "Writeoff" and verified the following tabs
      | 4934-EI-DB-SAR-PartialPeriod-RECAL-COMP-MultiTranche-writeoff.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1.xlsx |
    Then I verified the following Tabs details successfully
      | 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1.xlsx | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment&waiveInterest" and verified the following tabs
      | 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment&preclose" and verified the following tabs
      | 4935-RBI-EI-DB-DL-RECAL-COMP-DL-1-preclose.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4936-Mifos-EI-FL-SAR-Charges
    Then I navigate to scheduler job & execute "Apply Penalty For Broken Periods"
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4936-Mifos-EI-FL-SAR-Charges.xlsx |
    Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
    Then I verified the following Tabs details successfully
      | 4936-Mifos-EI-FL-SAR-Charges.xlsx | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment&waiveInterest" and verified the following tabs
      | 4936-Mifos-EI-FL-SAR-Charges-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
    Then I verified the following Tabs details successfully
      | 4936-Mifos-EI-FL-SAR-Charges-MakeRepayment.xlsx | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment&preclose" and verified the following tabs
      | 4936-Mifos-EI-FL-SAR-Charges-preclose.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4937-Mifos-EI-DB-SAR-Charges
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4937-Mifos-EI-DB-SAR-Charges.xlsx |
    Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
    Then I verified the following Tabs details successfully
      | 4937-Mifos-EI-DB-SAR-Charges.xlsx | Summary | Repayment Schedule |
    And I "MakeRepayment&waiveInterest" and verified the following tabs
      | 4937-Mifos-EI-DB-SAR-Charges-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
    Then I verified the following Tabs details successfully
      | 4937-Mifos-EI-DB-SAR-Charges-MakeRepayment.xlsx | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment&preclose" and verified the following tabs
      | 4937-Mifos-EI-DB-SAR-Charges-preclose.xlsx | Modify Transaction |
    Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
    And I "preclose" and verified the following tabs
      | 4937-Mifos-EI-DB-SAR-Charges-preclose.xlsx | Modify Transaction1 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4938-Mifos-EI-DB-SAR-Charges
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4938-Mifos-EI-DB-SAR-Charges.xlsx |
    Then I "MakeRepayment&waiveInterest" and verified the following tabs
      | 4938-Mifos-EI-DB-SAR-Charges.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |
    Then I navigate to scheduler job & execute "Apply penalty to overdue loans"
    Then I verified the following Tabs details successfully
      | 4938-Mifos-EI-DB-SAR-Charges-MakeRepayment.xlsx | Summary | Repayment Schedule | Transactions |
    And I "writeoff" and verified the following tabs
      | 4938-Mifos-EI-DB-SAR-Charges-writeoff.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  ################################################### 	DIGAMBAR   #############################################################
  
  @RunnerClassClientsSpecificclients
  Scenario: 4963-BulkJLGLOANon01JAN201-DISBLOAN
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx |
    Then I entered the values into client from "Input1" sheet
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx |
    Then I entered the values into client from "Input2" sheet
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx |
    When I set up the new create loan from "BulkJLGLoanInput" sheet
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx |
    Then I disburse loan from "ToClient1" sheet
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx |
    Then I verified the following Tabs details successfully
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN.xlsx | Summary | Repayment Schedule | Transactions |
    Then I disburse loan from "ToClient2" sheet
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN-2ndClient.xlsx |
    Then I verified the following Tabs details successfully
      | 4963-BulkJLGLOANon01JAN201-DISBLOAN-2ndClient.xlsx | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx |
    Then I entered the values into client from "Input1" sheet
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx |
    Then I entered the values into client from "Input2" sheet
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx |
    Then I entered the values into client from "Input3" sheet
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx |
    When I set up the new create loan from "BulkJLGLoanInput" sheet
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx |
    Then I disburse loan from "ToClient1" sheet
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx |
    Then I verified the following Tabs details successfully
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx | Summary | Repayment Schedule | Transactions |
    Then I disburse loan from "ToClient2" sheet
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1-2ndClient.xlsx |
    Then I verified the following Tabs details successfully
      | 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1-2ndClient.xlsx | Summary | Repayment Schedule |

 
  ################################################### 	GLIM LOANS   #############################################################
  @RunnerClassClientsSpecificclients
  Scenario: 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input1" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input2" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input3" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input4" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input5" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input6" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I set up the new create loan from "GlimLoanInput" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    Then I verified the "Summary" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "Repayment Schedule" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    Then I verified the "GlimOfClient6" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient1" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient2" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient3" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient4" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient5" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient6" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I modify New Account from "UndoDisb" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    Then I verified the "Summary" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "Repayment Schedule" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    Then I verified the "GlimOfClient5" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient1" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient2" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient3" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient4" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient5" details successfully
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    When I entered the values into client from "Input1" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    When I entered the values into client from "Input2" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    When I entered the values into client from "Input3" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    When I entered the values into client from "Input4" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    When I entered the values into client from "Input5" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    When I entered the values into client from "Input6" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    When I set up the new create loan from "GlimLoanInput" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    Then I disburse loan from "GlimLoanInput1" sheet
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    Then I "MakeRepayment" and verified the following tabs
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule |
    Then I verified the "GlimOfClient5" details successfully
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    And I verified the "Transactions" details and read the transaction Id
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 4991-GlimLoan-Disburse-MakeRepayment-VerifyTabs.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 |

  @RunnerClassClientsSpecificclients
  Scenario: 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
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
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    Then I "WaiveIterest&MakeRepayment" and verified the following tabs
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule |
    Then I verified the "GlimOfClient5" details successfully
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    And I verified the "Transactions" details and read the transaction Id
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 4992-GlimLoan-Disburse-MakeRepayment-waiveIterest-VerifyTabs.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 |

  @RunnerClassClientsSpecificclients
  Scenario: 4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx |
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
      | 4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx |
    Then I "MakeRepayment&WaiveIterest&waiveCharge" and verified the following tabs
      | 4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4993-GlimLoan-Disburse-MakeRepayment-waiveIterest-WaiveCharge-VerifyTabs.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx |
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
      | 4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx |
    Then I "MakeRepayment&WaiveIterest&waiveCharge" and verified the following tabs
      | 4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4994-GlimLoan-Disburse-waiveIterest-WaiveCharge-MakeRepayment-VerifyTabs.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 4995-GlimLoan-Disburse-Prepay-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx |
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
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx |
    Then I "Prepay1client" and verified the following tabs
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs.xlsx |
    Then I "OverRepaymentFor1client" and verified the following tabs
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepay1client.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepay1client.xlsx |
    Then I "PrepayAllclient" and verified the following tabs
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-prepayAllClient.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-prepayAllClient.xlsx |
    Then I "OverRepaymentForAllclient" and verified the following tabs
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx |
    And I verified the "Transactions" details and read the transaction Id
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 4995-GlimLoan-Disburse-Prepay-VerifyTabs-OverRepayAllclient.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 | Acc_Repayment3 |

  @RunnerClassClientsSpecificclients
  Scenario: 4996-GlimLoan-Disburse-Writeoff-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx |
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
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx |
    Then I "Writeoff1client" and verified the following tabs
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs.xlsx |
    Then I "RecoverRepaymentFor1client" and verified the following tabs
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepayment1client.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepayment1client.xlsx |
    Then I "WriteoffAllclient" and verified the following tabs
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-WriteoffAllclient.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-WriteoffAllclient.xlsx |
    Then I "RecoverRepaymentForAllclient" and verified the following tabs
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx |
    And I verified the "ChargesTab" details successfully
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx |
    And I verified the "Transactions" details and read the transaction Id
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 4996-GlimLoan-Disburse-Writeoff-VerifyTabs-RecoverRepaymentForAllclient.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 | Acc_Repayment3 |

  @RunnerClassClientsSpecificclients
  Scenario: 4997-GlimLoan-Disburse-Writeoff-Repayment
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx |
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
    Then I "Writeoff1client" and verified the following tabs
      | 4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx | Modify Transaction |
    Then I "MakeRepayment" and verified the following tabs
      | 4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx | Modify Transaction1 | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4997-GlimLoan-Disburse-Writeoff-Repayment.xlsx |
    Then I "UndoRepayment" and verified the following tabs
      | 4997-GlimLoan-Disburse-Writeoff-Repayment-Undo.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I verified the "GlimOfClient5" details successfully
      | 4997-GlimLoan-Disburse-Writeoff-Repayment-Undo.xlsx |
    And I verified the "Transactions" details and read the transaction Id
      | 4997-GlimLoan-Disburse-Writeoff-Repayment-Undo.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 4997-GlimLoan-Disburse-Writeoff-Repayment-Undo.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 |

  @RunnerClassClientsSpecificclients
  Scenario: 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs
    Given I Navigate to System Configuration web page & "enable" "glim-payment-as-group"
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input1" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input2" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input3" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I set up the new create loan from "GlimLoanInput" sheet
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    Then I verified the "Summary" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "Repayment Schedule" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    Then I verified the "GlimOfClient3" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient1" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient2" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient3" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    And I modify New Account from "UndoDisb" sheet
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    Then I verified the "Summary" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "Repayment Schedule" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    Then I verified the "GlimOfClient3" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient1" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient2" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    And I verified the "GlimRepaymentScheduleOfClient3" details successfully
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-UndoDisb.xlsx |
    Then I "MakeRepayment" and verified the following tabs
      | 4998-GlimLoanAsGroup-Submit-Modify-Approve-Disburse-VerifyTabs-repayment.xlsx | Modify Transaction | Summary | Repayment Schedule |

  @RunnerClassClientsSpecificclients
  Scenario: 4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx |
    When I entered the values into client from "Input1" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input2" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input3" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I set up the new create loan from "GlimLoanInput" sheet
      | 4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx |
    Then I "MakeRepayment&WaiveInterst&MakeRepayment" and verified the following tabs
      | 4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    And I verified the "Transactions" details and read the transaction Id
      | 4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 4999-GlimLoanAsGroup-Disburse-WaiveInterest-VerifyTabs.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 |

  @RunnerClassClientsSpecificclients
  Scenario: 5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx |
    When I entered the values into client from "Input1" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input2" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input3" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I set up the new create loan from "GlimLoanInput" sheet
      | 5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx |
    Then I "WaiveInterst&MakeRepayment&WriteOff" and verified the following tabs
      | 5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule |
    Then I "RecoverPayment" and verified the following tabs
      | 5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs-recover.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    And I verified the "Transactions" details and read the transaction Id
      | 5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5000-GlimLoanAsGroup-Disburse-Writeoff-VerifyTabs.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 | Acc_Repayment3 |

  @RunnerClassClientsSpecificclients
  Scenario: 5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs.xlsx |
    When I entered the values into client from "Input1" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input2" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input3" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I set up the new create loan from "GlimLoanInput" sheet
      | 5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs.xlsx |
    Then I "MakeRepayment&WaiveInterst&Prepay" and verified the following tabs
      | 5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |
    Then I "MakeOverRePayment" and verified the following tabs
      | 5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs-MakeRePayment.xlsx | Modify Transaction | Summary | Repayment Schedule |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    And I verified the "Transactions" details and read the transaction Id
      | 5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs-MakeRePayment.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5001-GlimLoanAsGroup-Disburse-PrePay-VerifyTabs-MakeRePayment.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 | Acc_Repayment3 |

  @RunnerClassClientsSpecificclients
  Scenario: 5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs
    Given I setup the group
    When I entered the values into group from "Group" sheet
      | 5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs.xlsx |
    When I entered the values into client from "Input1" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input2" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I entered the values into client from "Input3" sheet
      | 4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx |
    When I set up the new create loan from "GlimLoanInput" sheet
      | 5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs.xlsx |
    And I verified the "ChargesTab" details successfully
      | 5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs.xlsx |
    Then I "WaiveCharge" and verified the following tabs
      | 5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs.xlsx | Charges | Summary | Repayment Schedule | Transactions |
    Then I "MakeRePayment" and verified the following tabs
      | 5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs-Repayment.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I verified the "ChargesTab" details successfully
      | 5002-GlimLoanAsGroup-Disburse-WaiveCharge-VerifyTabs-Repayment.xlsx |

  ################################################### 	NABKISAN LOANS   #############################################################
  @RunnerClassClientsSpecificclients
  Scenario: 5038-Nabkisan-Componding-penality-Charge-loan
    Given I setup the product loan "Setup"
      | Productloannavigation.xlsx |
    Then I entered the values into product from "ProductLoanInput" Sheet
      | 5038-Nabkisan-Componding-penality-Charge-loan.xlsx |
    Then I navigate to scheduler job & execute "Apply Penalty For Broken Periods"
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5038-Nabkisan-Componding-penality-Charge-loan.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5038-Nabkisan-Componding-penality-Charge-loan-2ndInstallment.xlsx | Acc_Disbursement | Acc_Periodic |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan-3rdInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-3rdInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-3rdInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5038-Nabkisan-Componding-penality-Charge-loan-3rdInstallment.xlsx |
    And I "Disburse 2nd tranche" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan-Disb2ndTranche.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan-4thInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-4thInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-4thInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5038-Nabkisan-Componding-penality-Charge-loan-4thInstallment.xlsx |
    And I "WaiveInterest" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5038-Nabkisan-Componding-penality-Charge-loan-WaiveInterest.xlsx |
    And I "UndoDisburse and Disburse" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5038-Nabkisan-Componding-penality-Charge-loan-UndoDisburse.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-2ndInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-2ndInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-2ndInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-2ndInstallment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-3rdInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-3rdInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-3rdInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-3rdInstallment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-4thInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-4thInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-4thInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-4thInstallment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-5thInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-5thInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-5thInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-5thInstallment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-6thInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-6thInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-6thInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5039-CompondingPenalityCharge-BeforeGracePeriod-AfterGracePeriod-6thInstallment.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5040-CompondingPenalityCharge-MakeRepayment
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5040-CompondingPenalityCharge-MakeRepayment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    And I verified the "ChargesTab" details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment.xlsx |
    Then I "MakeRepayment on Exacttime and amount" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5040-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx |
    Then I "MakeRepayment on Exacttime and less amount" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5040-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx |
    Then I "MakeRepayment on Exacttime and More amount" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5040-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx |
    Then I "MakeRepayment on Early and exactamount" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5040-CompondingPenalityCharge-MakeRepayment-4thRepayment.xlsx |
    Then I "MakeRepayment on Early and Lessamount" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5040-CompondingPenalityCharge-MakeRepayment-5thRepayment.xlsx |
    Then I "MakeRepayment on Early and Moreamount" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-6thRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-6thRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-6thRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 5040-CompondingPenalityCharge-MakeRepayment-6thRepayment.xlsx |
    And I "Disburse 2nd tranche" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx | Modify Transaction |
    Then I "MakeRepayment on Late and Exactamount" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx | Modify Transaction1 |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx | Modify Transaction2 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx | Summary | Original Schedule | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 5040-CompondingPenalityCharge-MakeRepayment-Disb2ndTranche.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5041-CompondingPenalityCharge-MakeRepayment
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5041-CompondingPenalityCharge-MakeRepayment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    And I verified the "ChargesTab" details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment.xlsx |
    Then I "MakeRepayment on Late and excatamount" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5041-CompondingPenalityCharge-MakeRepayment-1stRepayment-overdues.xlsx |
    Then I "MakeRepayment on Late and less amount" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5041-CompondingPenalityCharge-MakeRepayment-2ndRepayment.xlsx |
    Then I "Waive Charge" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx | Charges |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5041-CompondingPenalityCharge-MakeRepayment-WaiveCharge.xlsx |
    Then I "MakeRepayment on Late and More amount" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5041-CompondingPenalityCharge-MakeRepayment-3rdRepayment.xlsx | Acc_Disbursement | Acc_Repayment10 | Acc_Repayment | Acc_Repayment3 | Acc_Repayment1 | Acc_Repayment4 | Acc_Repayment5 | Acc_Repayment6 | Acc_Repayment7 | Acc_Repayment8 | Acc_Repayment9 | Acc_Repayment2 |

  @RunnerClassClientsSpecificclients
  Scenario: 5042-CompondingPenalityCharge-Preclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5042-CompondingPenalityCharge-Preclose.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5042-CompondingPenalityCharge-Preclose.xlsx | Modify Transaction1 |
    Then I "MakeRepayment on Late and Lessamount" and verified the following tabs
      | 5042-CompondingPenalityCharge-Preclose.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5042-CompondingPenalityCharge-Preclose.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5042-CompondingPenalityCharge-Preclose.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5042-CompondingPenalityCharge-Preclose.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5042-CompondingPenalityCharge-Preclose.xlsx |
    Then I "Preclose" and verified the following tabs
      | 5042-CompondingPenalityCharge-Preclose-verify.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5042-CompondingPenalityCharge-Preclose-verify.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5042-CompondingPenalityCharge-Preclose-verify.xlsx | Summary | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5042-CompondingPenalityCharge-Preclose-verify.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5042-CompondingPenalityCharge-Preclose-verify.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5043-CompondingPenalityCharge-writeoff
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5043-CompondingPenalityCharge-writeoff.xlsx |
    Then I "MakeRepayment on Late and Moreamount" and verified the following tabs
      | 5043-CompondingPenalityCharge-writeoff.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5043-CompondingPenalityCharge-writeoff.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5043-CompondingPenalityCharge-writeoff.xlsx | Summary | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5043-CompondingPenalityCharge-writeoff.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5043-CompondingPenalityCharge-writeoff.xlsx |
    Then I "Writeoff" and verified the following tabs
      | 5043-CompondingPenalityCharge-writeoff-verify.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5043-CompondingPenalityCharge-writeoff-verify.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5043-CompondingPenalityCharge-writeoff-verify.xlsx | Summary | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5043-CompondingPenalityCharge-writeoff-verify.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5043-CompondingPenalityCharge-writeoff-verify.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndInstallment.xlsx |
    And I "WaiveInterest" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-WaiveInterest.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdInstallment.xlsx |
    And I "Disburse 2nd tranche" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thInstallment.xlsx |
    And I "UndoDisburse and Disburse" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5044-CompondingPenalityCharge-MoraoriumOnPrinciple2-UndoDisburse.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-2ndInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-2ndInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-2ndInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-2ndInstallment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-3rdInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-3rdInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-3rdInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-3rdInstallment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-4thInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-4thInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-4thInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-4thInstallment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-5thInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-5thInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-5thInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-5thInstallment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-6thInstallment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-6thInstallment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-6thInstallment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5045-CompondingPenalityCharge-MoraoriumOnPrinciple2-BeforeAndAfterGracePeriod-6thInstallment.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx |
    Then I "MakeRepayment 1stRepayment" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-MakeRepayment.xlsx |
    Then I "MakeRepayment 2ndRepayment" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-2ndRepayment.xlsx |
    Then I "MakeRepayment on Exacttime and amount" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-3rdRepayment.xlsx |
    Then I "MakeRepayment on Early and Lessamount" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-4thRepayment.xlsx |
    Then I "MakeRepayment on Late and Moreamount" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx | Summary | Original Schedule | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-5thRepayment.xlsx |
    And I "Disburse 2nd tranche" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx | Summary | Original Schedule | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 5046-CompondingPenalityCharge-MoraoriumOnPrinciple2-Disb2ndTranche.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx | Modify Transaction1 |
    Then I "MakeRepayment on Late and Lessamount" and verified the following tabs
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx | Summary | Original Schedule | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose.xlsx |
    Then I "Preclose" and verified the following tabs
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx | Summary | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 5047-CompondingPenalityCharge-MoraoriumOnPrinciple2-Preclose-verify.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx |
    Then I "MakeRepayment on Late and Moreamount" and verified the following tabs
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx | Summary | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff.xlsx |
    And I "Disburse 2nd tranche" and verified the following tabs
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-Disb2ndTranche.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-Disb2ndTranche.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-Disb2ndTranche.xlsx | Summary | Original Schedule | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-Disb2ndTranche.xlsx |
    Then I "Writeoff" and verified the following tabs
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx | Modify Transaction1 |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx | Summary | Repayment Schedule |
    And I verified the "ChargesTab" details successfully
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5048-CompondingPenalityCharge-MoraoriumOnPrinciple2-Writeoff-verify.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5049-Nabkisan-CompondingPenalityCharge-subsidy
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5042-CompondingPenalityCharge-Preclose.xlsx | Modify Transaction1 |
    Then I verified the "Summary" details successfully
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx |
    And I verified the "Repayment Schedule" details successfully
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 | Acc_Repayment3 |
    Then I navigate To Loan Account Page
    Then I make repayment and read the transaction Id
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy-Makerepayment1.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy-Makerepayment2.xlsx | Input | Summary | Repayment Schedule | Transactions |
    Then I "undo transaction from transaction tab" and verified the following tabs
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy-undoMakerepayment.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    And I verified the "Transactions" details and read the transaction Id
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy-undoMakerepayment.xlsx |
    Then I "Revoke Subsidy" and verified the following tabs
      | 5049-Nabkisan-CompondingPenalityCharge-subsidy-RevokeSubsidy.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |

  @RunnerClassClientsSpecificclients
  Scenario: 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment.xlsx |
    Then I make repayment and read the transaction Id
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Add Subsidy" and verified the following tabs
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy.xlsx | Modify Transaction | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment1.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Disb 2nd Tranche" and verified the following tabs
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-disbtranche.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Add Subsidy" and verified the following tabs
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy2.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy2.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Revoke Subsidy" and verified the following tabs
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx | Modify Transaction |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx | Summary | Original Schedule | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5050-Nabkisan-CompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 | Acc_Repayment3 | Acc_Repayment4 | Acc_Repayment5 | Acc_Disbursement1 | Acc_Repayment6 | Acc_Repayment7 |

  @RunnerClassClientsSpecificclients
  Scenario: 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5042-CompondingPenalityCharge-Preclose.xlsx | Modify Transaction1 |
    Then I verified the following Tabs details successfully
      | 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy.xlsx | Summary | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy-Makerepayment1.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy-Makerepayment2.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Revoke Subsidy" and verified the following tabs
      | 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy-RevokeSubsidy.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |
    Then I "Disb 2nd Tranche" and verified the following tabs
      | 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy-disbtranche.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Add Subsidy" and verified the following tabs
      | 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy-addSubsidy2.xlsx | Modify Transaction |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5051-Nabkisan-3monthsCompondingPenalityCharge-subsidy-addSubsidy2.xlsx | Summary | Original Schedule | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment.xlsx |
    Then I verified the following Tabs details successfully
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment.xlsx | Summary | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment1.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Add Subsidy" and verified the following tabs
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment-AfterRepayment1.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Disb 2nd Tranche" and verified the following tabs
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment-disbtranche.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Add Subsidy" and verified the following tabs
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy2.xlsx | Modify Transaction |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment-addSubsidy2.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment-AfterRepayment2.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Revoke Subsidy" and verified the following tabs
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx | Modify Transaction |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 5052-Nabkisan-3monthsCompondingPenalityCharge-subsidy-AfterRepayment-RevokeSubsidy.xlsx | Summary | Original Schedule | Repayment Schedule |

  @RunnerClassClientsSpecificclients
  Scenario: 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment.xlsx |
    Then I "Extend Repayment" and verified the following tabs
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    And I verified the "ChargesTab" details successfully
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment.xlsx |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment-OverDue1.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    And I verified the "ChargesTab" details successfully
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment-OverDue1.xlsx |
    Then I make repayment and read the transaction Id
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment-Repayment1.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Add Subsidy" and verified the following tabs
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment-AddSubsidy.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |
    Then I "Disb 2nd Tranche" and verified the following tabs
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment-disbtranche.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Extend Repayment" and verified the following tabs
      | 5053-Nabkisan-CompondingPenalityCharge-ExtendRepayment2.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment.xlsx |
    Then I make repayment and read the transaction Id
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment-Repayment1.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Extend Repayment" and verified the following tabs
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment-OverDue1.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    And I verified the "ChargesTab" details successfully
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment-OverDue1.xlsx |
    Then I make repayment and read the transaction Id
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment-Repayment2.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Add Subsidy" and verified the following tabs
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment-AddSubsidy.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule |
    Then I "Disb 2nd Tranche" and verified the following tabs
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment-disbtranche.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I "Extend Repayment" and verified the following tabs
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment2.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5054-Nabkisan-CompondingPenalityCharge-MakeRepayment-ExtendRepayment-Repayment4.xlsx | Input | Summary | Original Schedule | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 5055-Nabkisan-CompondingPenalityCharge-payClientCharge
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    Then I "Add Client Charge" and verified the following tabs
      | 5055-Nabkisan-CompondingPenalityCharge-ClientCharge.xlsx | Modify Transaction |
    And I verified the "Reccuring Charges Transaction" details successfully
      | 5055-Nabkisan-CompondingPenalityCharge-ClientCharge.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 5055-Nabkisan-CompondingPenalityCharge-ClientCharge.xlsx | ClientChargeAccural |

  @RunnerClassClientsSpecificclients
  Scenario: 5056-Nabkisan-CompondingPenalityCharge-WaiveClientCharge
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    Then I "Add and Waive Client Charge" and verified the following tabs
      | 5056-Nabkisan-CompondingPenalityCharge-WaiveClientCharge.xlsx | Modify Transaction |
    And I verified the "Reccuring Charges Transaction" details successfully
      | 5056-Nabkisan-CompondingPenalityCharge-WaiveClientCharge.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 5056-Nabkisan-CompondingPenalityCharge-WaiveClientCharge.xlsx | ClientChargeAccural |

  @RunnerClassClientsSpecificclients
  Scenario: 5057-Nabkisan-CompondingPenalityCharge-Waive-DeleteClientCharge
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    Then I "Add and Delete Client Charge" and verified the following tabs
      | 5057-Nabkisan-CompondingPenalityCharge-Waive-DeleteClientCharge.xlsx | Modify Transaction |
    Then I "Add and Waive Client Charge" and verified the following tabs
      | 5057-Nabkisan-CompondingPenalityCharge-Waive-DeleteClientCharge.xlsx | Modify Transaction1 |
    And I verified the "Reccuring Charges Transaction" details successfully
      | 5057-Nabkisan-CompondingPenalityCharge-Waive-DeleteClientCharge.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5058-Nabkisan-CompondingPenalityCharge-2TrancheOnSameDate
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5058-Nabkisan-CompondingPenalityCharge-2TrancheOnSameDate.xlsx |
    Then I "Disb 2nd Tranche" and verified the following tabs
      | 5058-Nabkisan-CompondingPenalityCharge-2TrancheOnSameDate.xlsx | Modify Transaction |

  @RunnerClassClientsSpecificclients
  Scenario: 5059-Nabkisan-CompondingPenalityCharge-RepaymentAfterMaturityDate
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5059-Nabkisan-CompondingPenalityCharge-RepaymentAfterMaturityDate.xlsx |
    Then I "Disb 2nd Tranche" and verified the following tabs
      | 5059-Nabkisan-CompondingPenalityCharge-RepaymentAfterMaturityDate.xlsx | Modify Transaction | Summary | Original Schedule | Repayment Schedule | Transactions |
    Given I navigate To "Overdue Charge" Page
    Then I "Run OverDue till Date job" and verified the following tabs
      | 5059-Nabkisan-CompondingPenalityCharge-RepaymentAfterMaturityDate-overdue.xlsx | Modify Transaction1 | Summary | Original Schedule | Repayment Schedule | Transactions |
    Then I make repayment and read the transaction Id
      | 5059-Nabkisan-CompondingPenalityCharge-RepaymentAfterMaturityDate-Makerepayment.xlsx | Input | Summary | Repayment Schedule | Transactions |

  ################################################### 	HANA LOANS   #############################################################
  @RunnerClassClientsSpecificclients
  Scenario: 5060-DisburseHanaLoanProduct-Repayment-WaiveInterest-Foreclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5060-DisburseHanaLoanProduct-Repayment-WaiveInterest-Foreclose.xlsx |
    Then I verified the following Tabs details successfully
      | 5060-DisburseHanaLoanProduct-Repayment-WaiveInterest-Foreclose.xlsx | Summary | Repayment Schedule | Transactions |
    Then I navigate to scheduler job & execute "Add Due Date Accrual Transactions"
    Then I "MakeRepayment" and verified the following tabs
      | 5060-DisburseHanaLoanProduct-Repayment-WaiveInterest-Foreclose-Repayment.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "WaiveInterest" and verified the following tabs
      | 5060-DisburseHanaLoanProduct-Repayment-WaiveInterest-Foreclose-WaiveInterest.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "Foreclose" and verified the following tabs
      | 5060-DisburseHanaLoanProduct-Repayment-WaiveInterest-Foreclose-Foreclose.xlsx | Modify Transaction | Summary | Repayment Schedule |
    Then I navigate to scheduler job & execute "Add Due Date Accrual Transactions"
    Then I verified the "Transactions" details and read the transaction Id
      | 5060-DisburseHanaLoanProduct-Repayment-WaiveInterest-Foreclose-Foreclose.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5060-DisburseHanaLoanProduct-Repayment-WaiveInterest-Foreclose-Foreclose.xlsx | Acc_Disbursement | Acc_RepaymentDisbursement | Acc_Repayment1 | Acc_Repayment2 | Acc_Repayment3 | Acc_Periodic |

  @RunnerClassClientsSpecificclients
  Scenario: 5061-DisburseHanaLoanProduct-WaiveInterest-Repayment-writeoff
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5061-DisburseHanaLoanProduct-WaiveInterest-Repayment-writeoff.xlsx |
    Then I navigate to scheduler job & execute "Add Due Date Accrual Transactions"
    Then I "WaiveInterest" and verified the following tabs
      | 5061-DisburseHanaLoanProduct-WaiveInterest-Repayment-writeoff.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeRepayment" and verified the following tabs
      | 5061-DisburseHanaLoanProduct-WaiveInterest-Repayment-writeoff-Repayment.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "writeoff" and verified the following tabs
      | 5061-DisburseHanaLoanProduct-WaiveInterest-Repayment-writeoff-writeoff.xlsx | Modify Transaction | Summary | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 5061-DisburseHanaLoanProduct-WaiveInterest-Repayment-writeoff-writeoff.xlsx |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 5061-DisburseHanaLoanProduct-WaiveInterest-Repayment-writeoff-writeoff.xlsx | Acc_Disbursement | Acc_RepaymentDisbursement | Acc_Repayment1 | Acc_Repayment2 | Acc_Repayment3 |

  @RunnerClassClientsSpecificclients
  Scenario: 5062-Hana-Moratorium-principle-RecurringPeriodsPrinciple
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5062-Hana-Moratorium-principle-RecurringPeriodsPrinciple.xlsx |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I "WaiveInterest" and verified the following tabs
      | 5062-Hana-Moratorium-principle-RecurringPeriodsPrinciple.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "MakeRepayment" and verified the following tabs
      | 5062-Hana-Moratorium-principle-RecurringPeriodsPrinciple-Repayment.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "writeoff" and verified the following tabs
      | 5062-Hana-Moratorium-principle-RecurringPeriodsPrinciple-writeoff.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 5063-Hana-Moratorium-principle-RecurringPeriodsPrinciple-foreclose
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5063-Hana-Moratorium-principle-RecurringPeriodsPrinciple.xlsx |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I "MakeRepayment" and verified the following tabs
      | 5063-Hana-Moratorium-principle-RecurringPeriodsPrinciple.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "WaiveInterest" and verified the following tabs
      | 5063-Hana-Moratorium-principle-RecurringPeriodsPrinciple-WaiveInterest.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |
    Then I "foreclose" and verified the following tabs
      | 5063-Hana-Moratorium-principle-RecurringPeriodsPrinciple-foreclose.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificclients
  Scenario: 5064-Hana-SavingAccount-Deposit-Withdraw-Close
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5064-Hana-SavingAccount-Deposit-Withdraw-Close.xlsx |
    Then I "Do Transaction" and verified the following tabs
      | 5064-Hana-SavingAccount-Deposit-Withdraw-Close.xlsx | SavingsDeposit | SavingsWdraw | SavingsDeposit1 | SavingsWdraw1 |
    Then I "Do Post Interest" and verified the following tabs
      | 5064-Hana-SavingAccount-Deposit-Withdraw-Close.xlsx | Modify Transaction |
    And I verified the "Saving Transaction" details successfully
      | 5064-Hana-SavingAccount-Deposit-Withdraw-Close.xlsx |
    Then I "Close Account" and verified the following tabs
      | 5064-Hana-SavingAccount-Deposit-Withdraw-Close-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx | Modify Transaction |
    And I verified the "Saving Transaction & TransID" details successfully
      | 5064-Hana-SavingAccount-Deposit-Withdraw-Close-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 5064-Hana-SavingAccount-Deposit-Withdraw-Close-CLOSE01APRIL2015-VIEWJRNLENTRY.xlsx | Deposit | Withdrawal | Deposit1 | Withdrawal1 | Withdrawal2 |

  @RunnerClassClientsSpecificclients
  Scenario: 5065-Hana-RDAccount-Deposit-Close-Withdraw
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx |
    Then I "Do Dec Deposit Transaction" and verified the following tabs
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx | RecurringDeposit |
    Then I "Do Feb Deposit Transaction" and verified the following tabs
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx | RecurringDeposit1 |
    Then I "Do April Deposit Transaction" and verified the following tabs
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx | RecurringDeposit2 |
    Then I "Do April Deposit Transaction" and verified the following tabs
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx | RecurringDeposit3 |
    Then I "Withdraw" and verified the following tabs
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx | Modify Transaction |
    And I verified the "RecurringDeposit Summary" details successfully
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx |
    And I verified the "RecurringDeposit Transaction" details successfully
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx |

  @RunnerClassClientsSpecificclients
  Scenario: 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx |
    Then I "Do Nov Deposit Transaction" and verified the following tabs
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx | RecurringDeposit |
    Then I "Do Dec Deposit Transaction" and verified the following tabs
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx | RecurringDeposit1 |
    Then I "Do Jan Deposit Transaction" and verified the following tabs
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx | RecurringDeposit2 |
    Then I "Do Feb Deposit Transaction" and verified the following tabs
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx | RecurringDeposit3 |
    Then I "Withdraw" and verified the following tabs
      | 5065-Hana-RDAccount-Deposit-Close-Withdraw.xlsx | Modify Transaction |
    Then I "Do Jan Deposit Transaction" and verified the following tabs
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx | RecurringDeposit4 |
    Then I "Do Feb Deposit Transaction" and verified the following tabs
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx | RecurringDeposit5 |
    Then I navigate to scheduler job & execute "Update Deposit Accounts Maturity details"
    Then I navigate To Saving Account Page
    And I verified the "RecurringDeposit Summary" details successfully
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx |
    And I verified the "RecurringDeposit Transaction" details successfully
      | 5066-Hana-RDAccount-Deposit-Withdraw-RunMaturityJob.xlsx |

  # @RunnerClassClientsSpecificclients
  # Scenario: 5067-Hana-RDAccount-LoanAccount-IndividualCollectionSheet
  #   Given I Navigate to System Configuration web page & "enable" "jlg_loans_included_in_individual_collection_sheet"
  #   Given I setup the group
  #   When I entered the values into group from "Input" sheet
  #     | 5067-Hana-RDAccount-LoanAccount-IndividualCollectionSheet.xlsx |
  #   Then I entered the values into client from "Input" sheet
  #     | Createclient.xlsx |
  #   When I set up the new create loan from "NewLoanInput" sheet
  #     | 5067-Hana-RDAccount-LoanAccount-IndividualCollectionSheet.xlsx |
  #   When I set up the new create RD account from "NewRDInput" sheet
  #     | 5067-Hana-RDAccount-LoanAccount-IndividualCollectionSheet.xlsx |
  #   Then I navigate to Individual collection Sheet
  #   And I Make Repayment Through "Collection" sheet
  #     | 5067-Hana-RDAccount-LoanAccount-IndividualCollectionSheet.xlsx |
  #   And I navigate To Loan Account Page
  #   And I verified the "Repayment Schedule" details successfully
  #     | 5067-Hana-RDAccount-LoanAccount-IndividualCollectionSheet.xlsx |
  #   Then I navigate To Saving Account Page
  #   And I verified the "Saving Transaction" details successfully
  #     | 5067-Hana-RDAccount-LoanAccount-IndividualCollectionSheet.xlsx |
