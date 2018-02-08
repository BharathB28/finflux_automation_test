Feature: SECDEP-SanityTestScenarios

  Background: 
    Given I navigate to mifos using "/?tenantIdentifier=default13#/"
    And I login into mifos site using "Login" excel sheet
      | Login.xlsx |
    Then I should see logged in successfully

     ################################################### 	SECDEP   #############################################################
 
  @RunnerClassClientsSpecificSecdep
  Scenario: 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt
    Given I setup the "RecurringDeposit" product
      | Productloannavigation.xlsx |
    Then I entered the values into product from "ProductRDInput" Sheet
      | 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt.xlsx |
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
      | 4965-SUBMIT-MODAPP-APPROVE-UNDOAPPROVE-DISB-UNDODISB-DISBLessAmt-MakeRepayment.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4966-DISBL-MakeRepayment-waiveInterest-foreclose
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
    Then I verified the "Summary" details successfully
      | 4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
    And I verified the "Repayment Schedule" details successfully
      | 4966-DISBL-MakeRepayment-waiveInterest-foreclose.xlsx |
    And I "MakeRepayment&Waive" and verified the following tabs
      | 4966-DISBL-MakeRepayment-waiveInterest-foreclose-MakeRepayment.xlsx | Modify Transaction1 | Modify Transaction | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment&Foreclose" and verified the following tabs
      | 4966-DISBL-MakeRepayment-waiveInterest-foreclose-foreclose.xlsx | Modify Transaction | Modify Transaction1 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4967-DISBL-waiveInterest-MakeRepayment-writeoff
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx |
    And I "MakeRepayment&Waive" and verified the following tabs
      | 4967-DISBL-waiveInterest-MakeRepayment-writeoff.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx |
    Then I "Navigate to RD account" and verified the following tabs
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx | Recurring Navigate |
    And I verified the "RecurringDeposit Transaction" details successfully
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction.xlsx |
    Then I navigate To Loan Account Page
    And I modify New Account from "UndoDisb" sheet
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction-UndoDisb.xlsx |
    Then I "Navigate to RD account" and verified the following tabs
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction-UndoDisb.xlsx | Recurring Navigate |
    And I verified the "RecurringDeposit Summary" details successfully
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction-UndoDisb.xlsx |
    And I verified the "RecurringDeposit Transaction R" details successfully
      | 4968-DISBLOAN-VerifyRDTransaction-UNDODISB-VerifyRDTransaction-UndoDisb.xlsx |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4969-ModifyApplication-DISBLOAN-VerifyRDTransaction
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx |
    Then I "Navigate to RD account" and verified the following tabs
      | 4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx | Recurring Navigate |
    And I verified the "RecurringDeposit Transaction" details successfully
      | 4969-ModifyApplication-DISBLOAN-VerifyRDTransaction.xlsx |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx |
    Then I "Navigate to RD account" and verified the following tabs
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx | Recurring Navigate |
    And I verified the "RD Transaction & TransID" details successfully
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx | Deposit1 |
    Then I navigate To Loan Account Page
    Then I verified the "Transactions" details and read the transaction Id
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 4970-DISBLOAN-VerifyRDTransaction-JouranlEntries.xlsx | Acc_Disbursement | Acc_Disbursement1 | Acc_RepaymentDisbursement |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |
    Then I verified the "Summary" details successfully
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |
    And I verified the "Repayment Schedule" details successfully
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |
    Then I "Navigate to RD account" and verified the following tabs
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx | Recurring Navigate |
    And I verified the "RecurringDeposit Transaction" details successfully
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |
    And I verified the "TransferDetails" details successfully
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |
    And I verified the "RecurringDeposit Transaction" details successfully
      | 4971-ChangeDisbDate-DISBLOAN-VerifyRDTransaction-TransferData.xlsx |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
    When I set up the new create RD account from "NewRDInput1" sheet
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
    And I modify New Account from "UndoDisb" sheet
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
    Then I "Navigate to RD account" and verified the following tabs
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx | Recurring Navigate |
    And I verified the "RecurringDeposit Transaction R" details successfully
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |
    Then I "Navigate to RD account" and verified the following tabs
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx | Recurring Navigate1 |
    And I verified the "RecurringDeposit Transaction" details successfully
      | 4972-DISBLOAN-VerifyRDTransaction-UNDODISB-ChangeRDAccount-DISBLOAN-VerifyRDTransaction.xlsx |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4973-DISBLOAN-MakeRepayment-JouranlEntries
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx |
    And I "MakeRepayment&Foreclose" and verified the following tabs
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule |
    Then I verified the "Transactions" details and read the transaction Id
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx | Acc_Disbursement | Acc_Disbursement1 | Acc_RepaymentDisbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 |
    Then I "Navigate to RD account" and verified the following tabs
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx | Recurring Navigate |
    And I verified the "RD Transaction & TransID" details successfully
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 4973-DISBLOAN-MakeRepayment-JouranlEntries.xlsx | Deposit1 |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4983-DISBLOAN-VerifyTransaction-JouranlEntries
    Given I Navigate to System Configuration web page & "enable" "paymenttype-applicable-for-disbursement-charges"
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx |
    When I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create RD account from "NewRDInput" sheet
      | 4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx |
    Then I verified the "Transactions" details and read the transaction Id
      | 4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 4983-DISBLOAN-VerifyTransaction-JouranlEntries.xlsx | Acc_Disbursement | Acc_Disbursement1 | Acc_RepaymentDisbursement | Acc_Repayment | Acc_Repayment1 | Acc_Repayment2 |

  @RunnerClassClientsSpecificSecdep
  Scenario: 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet
    Given I Navigate to System Configuration web page & "enable" "include-client-charges-in-collection-sheet"
    Given I setup the center
    When I entered the values into center from "Input" sheet
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx |
    Then I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx |
    Then I "Add client charge" and verified the following tabs
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx | Modify Transaction |
    Then I navigate to scheduler job & execute "Apply Recurring Charge On Client"
    Then I "Navigate to client and Verify Charge Overview" and verified the following tabs
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx | Modify Transaction1 |
    And I verified the "Reccuring Client Data" details successfully
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx |
    Then I navigate to collection Sheet
    Then I "Pay Reccuring Charge" and verified the following tabs
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx | Modify Transaction2 |
    Then I "Navigate to client and Verify Charge Overview" and verified the following tabs
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx | Modify Transaction1 |
    And I verified the "Reccuring Charges Transaction" details successfully
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx |
    And I Navigate to Accounting web page
    Then I search with transaction id & verified the accounting entries
      | 4988-DisbLoan-ApplyClientCharge-PayThroughCollectionSheet.xlsx | ClientChargeAccural |
    
