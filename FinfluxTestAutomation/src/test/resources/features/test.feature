Feature:RBI

Background:
	Given I navigate to mifos using ":7443/?tenantIdentifier=chaitanya#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClassChaitanyaSpecific
  Scenario: 5012-CreateEmiPack-DisburseLoan-Verify
    
    Given I setup the center
    When I entered the values into center from "Center" sheet
      | 5012-CreateEmiPack-DisburseLoan-Verify.xlsx |
    Then I entered the values into group from "Group" sheet
      | 5012-CreateEmiPack-DisburseLoan-Verify.xlsx |
    Then I entered the values into client from "Input" sheet
      | CreateChaitanyaclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 5012-CreateEmiPack-DisburseLoan-Verify.xlsx |
    Then I verified the following Tabs details successfully
      | 5012-CreateEmiPack-DisburseLoan-Verify.xlsx | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment&waiveInterest" and verified the following tabs
      | 5012-CreateEmiPack-DisburseLoan-Verify-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche&waiveInterest&MakeRepayment" and verified the following tabs
      | 5012-CreateEmiPack-DisburseLoan-Verify-2ndTranche.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |
    And I "Try To Undo LastTranche" and verified the following tabs
      | 5012-CreateEmiPack-DisburseLoan-Verify-2ndTranche.xlsx | Modify Transaction3 |
    Then i validate and Verify from "error" sheet
      | 5012-CreateEmiPack-DisburseLoan-Verify-2ndTranche.xlsx |
      