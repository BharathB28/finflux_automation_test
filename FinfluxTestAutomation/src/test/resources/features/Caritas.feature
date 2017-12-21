Feature: ClientSpecific-SanityTestScenarios

  Background: 
    Given I navigate to mifos using "default9#/"
    And I login into mifos site using "Login" excel sheet
      | Login.xlsx |
    Then I should see logged in successfully

  @RunnerClassClientsSpecific
  Scenario: 5068-caritas-LoanDisburse-makerepayment
    Given I navigate to Entity Mapping And Map Office Specific Products
      | 5073-caritas-Branch-Specific-products-charges.xlsx | LoanProductMapping | SavingProductMapping | SavingProductMapping1 | ChargeProductMapping |
    Given I Navigate to System Configuration web page & "enable" "office-specific-products-enabled"
    Given I Navigate to System Configuration web page & "enable" "restrict-products-to-user-office"
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    Then I "Update Default Saving account" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | Modify Transaction |
    Then I navigate To Saving Account Page
    Then I "Do Transaction" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | SavingsDeposit1 | SavingsDeposit2 | SavingsDeposit3 |
    When I set up the new create saving account from "NewSavingInput1" sheet
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    Then I "Do Transaction" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | SavingsDeposit4 |
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate To Saving Account Page
    When I set up the new create loan from "NewLoanInput" sheet
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    Then I add Guarentor for loan application from "Self Guarentor" sheet
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    When I set up the new create loan from "NewLoanInput1" sheet
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I navigate to clients payment page and make Payment
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | Modify Transaction1 |
    Then I navigate To Loan Account Page
    Then I verified the following Tabs details successfully
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | Summary | Repayment Schedule | Transactions |
    Then I "Navigate to Guarantor Saving Account" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | Modify Transaction2 |
    And I verified the "Saving Transaction" details successfully
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    Then I "Navigate to Charge Saving Account" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment-ChargeSavingAccount.xlsx | Modify Transaction |
    And I verified the "Saving Transaction" details successfully
      | 5068-caritas-LoanDisburse-makerepayment-ChargeSavingAccount.xlsx |
    And I verified the "Saving Charges" details successfully
      | 5068-caritas-LoanDisburse-makerepayment-ChargeSavingAccount.xlsx |
    Then I navigate To Loan Account Page
    Then I "Undo Disburse" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment-ChargeSavingAccount.xlsx | Modify Transaction1 |
    Then I "Navigate to Charge Saving Account" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment-ChargeSavingAccount.xlsx | Modify Transaction |
    And I verified the "Saving Transaction" details successfully
      | 5068-caritas-LoanDisburse-makerepayment-UndoDisburseLoan.xlsx |
    And I verified the "Saving Charges" details successfully
      | 5068-caritas-LoanDisburse-makerepayment-UndoDisburseLoan.xlsx |

  @RunnerClassClientsSpecific
  Scenario: 5069-caritas-LoanDisburse-AddExternalGuaratee
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx |
    Then I "Update Default Saving account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx | Modify Transaction |
    Then I navigate To Saving Account Page
    Then I "Do Transaction" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx | SavingsDeposit1 | SavingsDeposit2 | SavingsDeposit3 |
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I "Update Default Saving account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | Modify Transaction |
    Then I navigate To Saving Account Page
    Then I "Do Transaction" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | SavingsDeposit1 | SavingsDeposit2 | SavingsDeposit3 |
    When I set up the new create saving account from "NewSavingInput1" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I "Do Transaction" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | SavingsDeposit4 |
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate To Saving Account Page
    When I set up the new create loan from "NewLoanInput" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I add Guarentor for loan application from "Self Guarentor" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I add Guarentor for loan application from "External Guarentor" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    When I set up the new create loan from "NewLoanInput1" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I navigate to clients payment page and make Payment
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | Modify Transaction1 |
    Then I navigate To Loan Account Page
    Then I verified the following Tabs details successfully
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | Summary | Repayment Schedule | Transactions |
    Then I "Navigate to Guarantor Saving Account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | Modify Transaction2 |
    And I verified the "Saving Transaction" details successfully
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I "Navigate to Charge Saving Account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee-ChargeSavingAccount.xlsx | Modify Transaction |
    And I verified the "Saving Transaction" details successfully
      | 5069-caritas-LoanDisburse-AddSelfGuaratee-ChargeSavingAccount.xlsx |
    And I verified the "Saving Charges" details successfully
      | 5069-caritas-LoanDisburse-AddSelfGuaratee-ChargeSavingAccount.xlsx |
    Then I "Navigate to External Saving Account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx | Modify Transaction1 |
    And I verified the "Saving Transaction" details successfully
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx |

  @RunnerClassClientsSpecific
  Scenario: 5070-caritas-LoanDisburse-WithGuarantee
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | 5070-caritas-LoanDisburse-WithGuarantee.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    Then I "Update Default Saving account" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | Modify Transaction |
    Then I navigate To Saving Account Page
    Then I "Do Transaction" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | SavingsDeposit1 | SavingsDeposit2 |
    When I set up the new create saving account from "NewSavingInput1" sheet
      | 5068-caritas-LoanDisburse-makerepayment.xlsx |
    Then I "Do Transaction" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | SavingsDeposit4 |
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate To Saving Account Page
    When I set up the new create loan from "NewLoanInput" sheet
      | 5070-caritas-LoanDisburse-WithGuarantee.xlsx |
    Then I "Navigate to Guarantor Saving Account and make deposit" and verified the following tabs
      | 5070-caritas-LoanDisburse-WithGuarantee.xlsx | Modify Transaction | SavingsDeposit3 |
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate To Saving Account Page
    When I set up the new create loan from "NewLoanInput1" sheet
      | 5070-caritas-LoanDisburse-WithGuarantee.xlsx |
    Then I add Guarentor for loan application from "Self Guarentor" sheet
      | 5070-caritas-LoanDisburse-WithGuarantee.xlsx |
    When I set up the new create loan from "NewLoanInput2" sheet
      | 5070-caritas-LoanDisburse-WithGuarantee.xlsx |
    Then i validate and Verify from "error2" sheet
      | 5070-caritas-LoanDisburse-WithGuarantee.xlsx |

  @RunnerClassClientsSpecific
  Scenario: 5071-caritas-RepaymentStartegy
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | 5071-caritas-RepaymentStartegy.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5071-caritas-RepaymentStartegy.xlsx |
    Then I "Update Default Saving account" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | Modify Transaction |
    Then I navigate To Saving Account Page
    Then I "Do Transaction" and verified the following tabs
      | 5071-caritas-RepaymentStartegy.xlsx | SavingsDeposit1 | SavingsDeposit2 | SavingsDeposit3 |
    When I set up the new create saving account from "NewSavingInput1" sheet
      | 5071-caritas-RepaymentStartegy.xlsx |
    Then I "Do Transaction" and verified the following tabs
      | 5071-caritas-RepaymentStartegy.xlsx | SavingsDeposit4 |
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate To Saving Account Page
    When I set up the new create loan from "NewLoanInput" sheet
      | 5071-caritas-RepaymentStartegy.xlsx |
    Then I add Guarentor for loan application from "Self Guarentor" sheet
      | 5071-caritas-RepaymentStartegy.xlsx |
    When I set up the new create loan from "NewLoanInput1" sheet
      | 5071-caritas-RepaymentStartegy.xlsx |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I navigate To Loan Account Page
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy.xlsx | Repay1 | Summary | Repayment Schedule | Transactions |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy-2ndRepayment.xlsx | Repay1 | Summary | Repayment Schedule | Transactions |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy-3rdRepayment.xlsx | Repay1 | Summary | Repayment Schedule | Transactions |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy-4thRepayment.xlsx | Repay1 | Summary | Repayment Schedule | Transactions |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy-5thRepayment.xlsx | Repay1 | Summary | Repayment Schedule | Transactions |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy-6thRepayment.xlsx | Repay1 | Summary | Repayment Schedule | Transactions |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy-7thRepayment.xlsx | Repay1 | Summary | Repayment Schedule | Transactions |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy-8thRepayment.xlsx | Repay1 | Summary | Repayment Schedule | Transactions |
    And I verified the "Guarantor List" details successfully
      | 5071-caritas-RepaymentStartegy-8thRepayment.xlsx |
    And I verified the "Guarantor Hold Transactions" details successfully
      | 5071-caritas-RepaymentStartegy-8thRepayment.xlsx |
    Then I navigate to clients payment page and make Payment
      | 5071-caritas-RepaymentStartegy-9thRepayment.xlsx | Modify Transaction |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I make repayment and verified the following tabs
      | 5071-caritas-RepaymentStartegy-9thRepayment.xlsx | Summary | Repayment Schedule | Transactions |
    Then I "Navigate to Guarantor Saving Account" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment.xlsx | Modify Transaction2 |
    And I verified the "Saving Transaction" details successfully
      | 5071-caritas-RepaymentStartegy-9thRepayment.xlsx |
    And I verified the "Saving Charges" details successfully
      | 5071-caritas-RepaymentStartegy-9thRepayment.xlsx |
    Then I "Navigate to Charge Saving Account" and verified the following tabs
      | 5068-caritas-LoanDisburse-makerepayment-ChargeSavingAccount.xlsx | Modify Transaction |
    And I verified the "Saving Transaction" details successfully
      | 5071-caritas-RepaymentStartegy-ChargeSavingAccount.xlsx |
    And I verified the "Saving Charges" details successfully
      | 5071-caritas-RepaymentStartegy-ChargeSavingAccount.xlsx |
    And I navigate to On demand SMS page and Send SMS
      | 5071-caritas-RepaymentStartegy-ChargeSavingAccount.xlsx | Modify Transaction |

  @RunnerClassClientsSpecific
  Scenario: 5072-caritas-ExternalGuaratee-TrasferingSavingAmoutToLoanAccount
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | 5072-caritas-ExternalGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx |
    Then I "Update Default Saving account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx | Modify Transaction |
    Then I navigate To Saving Account Page
    Then I "Do Transaction" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx | SavingsDeposit1 | SavingsDeposit2 | SavingsDeposit3 |
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | 5072-caritas-SelfGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I "Update Default Saving account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | Modify Transaction |
    Then I navigate To Saving Account Page
    Then I "Do Transaction" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | SavingsDeposit1 | SavingsDeposit2 | SavingsDeposit3 |
    When I set up the new create saving account from "NewSavingInput1" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I "Do Transaction" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | SavingsDeposit4 |
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate to scheduler job & execute "Update Client Sub-Status"
    Then I navigate To Saving Account Page
    When I set up the new create loan from "NewLoanInput" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I add Guarentor for loan application from "Self Guarentor" sheet
      | 5072-caritas-SelfGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx |
    Then I add Guarentor for loan application from "External Guarentor" sheet
      | 5072-caritas-SelfGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx |
    When I set up the new create loan from "NewLoanInput1" sheet
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx |
    Then I run SQL Command to reset "sms_campaign" data
      | update sms_campaign s set s.next_trigger_date=CURRENT_TIMESTAMP(), s.last_trigger_date=null where s.campaign_trigger_type=2; |
    Then I navigate to scheduler job & execute "Send messages to SMS gateway"
    Then I "Navigate to External Saving Account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddExternalGuaratee.xlsx | Modify Transaction1 |
    Then I "Transfer Fund to another account" and verified the following tabs
      | 5072-caritas-SelfGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx | Modify Transaction |
    And I verified the "Saving Transaction" details successfully
      | 5072-caritas-ExternalGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx |
    Then I "Navigate to Guarantor Saving Account" and verified the following tabs
      | 5069-caritas-LoanDisburse-AddSelfGuaratee.xlsx | Modify Transaction2 |
    Then I "Transfer Fund to Own account" and verified the following tabs
      | 5072-caritas-SelfGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx | Modify Transaction1 |
    And I verified the "Saving Transaction" details successfully
      | 5072-caritas-SelfGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx |
    Then I navigate To Loan Account Page
    Then I verified the following Tabs details successfully
      | 5072-caritas-SelfGuaratee-TrasferingSavingAmoutToLoanAccount.xlsx | Summary | Repayment Schedule | Transactions |

  @RunnerClassClientsSpecific
  Scenario: 5073-caritas-Branch-Specific-products-charges
    Given I logout from mifos site
    And I login into mifos site using "Branchmanager" excel sheet
      | Login.xlsx |
    Then I should see logged in successfully
    Given I setup the clients
    When I entered the values into client from "Input" sheet
      | 5073-caritas-Branch-Specific-products-charges.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5073-caritas-Branch-Specific-products-charges.xlsx |
    When I set up the new create saving account from "NewSavingInput" sheet
      | 5073-caritas-Branch-Specific-products-charges.xlsx |
    Given I logout from mifos site
    And I login into mifos site using "Login" excel sheet
      | Login.xlsx |
    Then I should see logged in successfully
    Given I navigate to Entity Mapping And Map Office Specific Products
      | 5073-caritas-Branch-Specific-products-charges.xlsx | EditLoanProductMapping | EditSavingProductMapping | EditChargeProductMapping |
    Given I logout from mifos site
    And I login into mifos site using "Branchmanager" excel sheet
      | Login.xlsx |
    Then I should see logged in successfully
    Given I setup the clients
    When I entered the values into client from "Input1" sheet
      | 5073-caritas-Branch-Specific-products-charges.xlsx |
    When I set up the new create saving account from "NewSavingInput1" sheet
      | 5073-caritas-Branch-Specific-products-charges.xlsx |
    When I set up the new create loan from "NewLoanInput1" sheet
      | 5073-caritas-Branch-Specific-products-charges.xlsx |
