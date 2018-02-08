Feature:RBI

Background:
	Given I navigate to mifos using ":7443/?tenantIdentifier=chaitanya#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClassChaitanyaSpecific
  Scenario: 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date
    Given I setup the center
    When I entered the values into center from "Center" sheet
      | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx |
    Then I entered the values into group from "Group" sheet
      | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx |
    Then I entered the values into client from "Input" sheet
      | CreateChaitanyaclient.xlsx |
    When I set up the new create loan from "NewLoanInput" sheet
      | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx |
    Then I verified the following Tabs details successfully
      | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date.xlsx | Summary | Repayment Schedule | Transactions |
    And I "MakeRepayment&waiveInterest" and verified the following tabs
      | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date-MakeRepayment.xlsx | Modify Transaction | Modify Transaction1 | Modify Transaction2 | Summary | Repayment Schedule | Transactions |
    And I "Disburse2ndTranche&ReschRepayDate" and verified the following tabs
      | 4939-Minimum-Days-Between-Disbursal-And-First-Repayment-Date-Disb2ndTranche.xlsx | Modify Transaction | Summary | Repayment Schedule | Transactions |

      