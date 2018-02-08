package com.mifos.steps;

import java.util.List;

import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class SavingSteps {

	public FrontPage varFrontPage = FrontPage.getInstance();
    public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();


	@When("^I set up the new create saving account from \"([^\"]*)\" sheet$")
	public void I_set_up_the_new_create_Saving_account_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewSaving(ExcelSheetPath, excelSheetName, sheetName);
	}

	@When("^I set up the new create FD account from \"([^\"]*)\" sheet$")
	public void I_set_up_the_new_create_FD_account_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewSaving(ExcelSheetPath, excelSheetName, sheetName);
	}

	@When("^I set up the new create RD account from \"([^\"]*)\" sheet$")
	public void I_set_up_the_new_create_RD_account_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewSaving(ExcelSheetPath, excelSheetName, sheetName);
	}

	@When("^I set up the new create share account from \"([^\"]*)\" sheet$")
	public void I_set_up_the_new_create_share_account_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewSaving(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I navigate To Saving Account Page$")
	public void I_navigate_To_Saving_Account_Page() throws Throwable {
		varFrontPage.navigateSavingAccounting();
	}

}
