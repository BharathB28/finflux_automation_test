Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClassClientsSpecific
Scenario: 4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC
    Given I setup the product loan "Setup"
      | Productloannavigation.xlsx |
    Then I entered the values into product from "ProductLoanInput" Sheet
      | 4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Loanproduct.xlsx |
    Given I setup the group
    When I entered the values into group from "Input" sheet
      | 4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx |
    Then I entered the values into client from "Input" sheet
      | Createclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx |
    Then I navigate to scheduler job & execute "Periodic Accrual Transactions"
    Then I verified the following Tabs details successfully
      | 4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Newcreateloan1.xlsx | Summary | Repayment Schedule | Transactions |
    Then I make repayment and verified the following tabs
      | 4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx | Input | Summary | Repayment Schedule | Transactions |
    And I Navigate to Accounting web page
    And I search with transaction id & verified the accounting entries
      | 4200-RBI-EI-DB-DL-REC-FEE-RNI-FFC-SAR-FFROP-DAILY-1-CTRFD-MD-TR-1-ONTIME-PERIODIC-Makerepayment1.xlsx | Acc_Disbursement | Acc_Repayment | Acc_Periodic |
      