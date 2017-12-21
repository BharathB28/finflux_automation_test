package com.mifos.steps;

import java.util.List;

import com.mifos.common.TenantsUtils;
import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class AccountingAndAccrualsSteps{

	final public FrontPage varFrontPage = new FrontPage();
	public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
	
	@Then("^I Navigate to Accounting web page$")
	public void I_Navigate_to_Accounting() throws Throwable {
		MifosWebPage.navigateToUrl(
				TenantsUtils.getLocalTenantUrl() + MifosWebPage.getResource("AccountingSearchJournalEntries"));
	}

	@Then("^I Navigate to System Configuration web page & \"([^\"]*)\" \"([^\"]*)\"$")
	public void I_Navigate_to_System_Configuration(String status, String configurationName) throws Throwable {
		varFrontPage.EnableDisableConfiguration(status, configurationName);
	}

	@Then("^I search with transaction id & verified the accounting entries$")
	public void I_search_with_transaction_id_verified_the_accounting_entries(List<List<String>> excelSheet)
			throws Throwable {

		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.searchWithTransactinID(ExcelSheetPath, option.get(0), option.get(i));
			}
		}

	}

	@Then("^I navigate to scheduler job & execute \"([^\"]*)\"$")
	public void I_navigate_to_scheduler_job_execute(String SchedularJobName) throws Throwable {
		varFrontPage.selectSchedularJob(SchedularJobName);

	}

	/*
	 * And I create Account Closures Entry from "CreateAccountClosures" sheet
	 */
	@Then("^I create Account Closures Entry from \"([^\"]*)\" sheet$")
	public void I_create_Account_Closures_Entry_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.createAccountClosuresEntry(ExcelSheetPath, excelSheetName, sheetName);
	}

	/*
	 * I Delete Account Closures Entry from "DeleteAccountClosures" sheet
	 */
	@Then("^I Delete Account Closures Entry from \"([^\"]*)\" sheet$")
	public void I_Delete_Account_Closures_Entry_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.deleteAccountClosuresEntry(ExcelSheetPath, excelSheetName, sheetName);
	}

	/*
	 * Then I Execute Periodic Accrual Accounting
	 */
	@Then("^I Execute Periodic Accrual Accounting$")
	public void I_Execute_Periodic_Accrual_Accounting(List<List<String>> excel) throws Throwable {

		for (List<String> excelSheet : excel) {
			for (int i = 1; i < excelSheet.size(); i++) {
				varFrontPage.RunPeriodicAccrual(ExcelSheetPath, excelSheet.get(0), excelSheet.get(i));
			}
		}
	}

	@Given("^I Navigate and create Loan Provisioning \"([^\"]*)\" from \"([^\"]*)\" Sheet$")
	public void I_navigate_and_create_Provisioning_Criteria_age(String LoanProvision, String sheetName,
			List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.navigateToLoanProvisioningPage(ExcelSheetPath, excelSheetName, LoanProvision, sheetName);

	}

}
