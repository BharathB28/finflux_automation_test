package com.mifos.steps;

import java.util.List;

import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.mifos.common.TenantsUtils;
import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class ClientSteps {

	final public FrontPage varFrontPage = FrontPage.getInstance();
    public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
	public MifosWebPage webpage = new MifosWebPage();

	@Given("^I setup the clients$")
	public void I_setup_the_clients() throws Throwable {

		// ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
		varFrontPage.clientNavigation();
	}

	@When("^I entered the values into client from \"([^\"]*)\" sheet$")
	public void I_entered_the_values_into_client_from_sheet_Verified(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupClient(ExcelSheetPath, excelSheetName, sheetName);
	}

	// Then I "Transfer Client" from "Transfer Client" sheet
	@Then("^I \"([^\"]*)\" from \"([^\"]*)\" sheet$")
	public void I_from_sheet(String arg1, String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.transferClient(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I should see client created successfully from \"([^\"]*)\" sheet$")
	public void I_should_see_client_created_successfully_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyAndValidate(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I Edit Client from \"([^\"]*)\" sheet$")
	public void I_Edit_Client_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupClient(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I went back to the client$")
	public void I_went_back_to_the_client() throws Throwable {
		varFrontPage.clickBackToClient();
		Thread.sleep(4000);
	}

	@Then("^I search with \"([^\"])\" on mifos$")
	public void I_search_with_on_mifos(String user) throws Throwable {
		varFrontPage.searchUser(user);
	}


	/*
	 * @Then("^I \"([^\"]*)\" trance from trache tab and verified the following tabs$"
	 * ) public void
	 * I_trance_from_trache_tab_and_verified_the_following_tabs(String arg1,
	 * List<List<String>> excelSheet) throws Throwable { for (List<String>
	 * option : excelSheet) { for (int i = 1; i < option.size(); i++) {
	 * varFrontPage.loanTabDetails(ExcelSheetPath, option.get(0),option.get(i));
	 * } } }
	 */

	/*
	 * @When("^I set up the new savings$") public void
	 * I_set_up_the_new_savings(String sheetName, List<String> excelSheetName)
	 * throws Throwable { varFrontPage.createNewLoan(ExcelSheetPath,
	 * excelSheetName, sheetName); }
	 */

	/*
	 * @When("^I make prepayloan and verified the following tabs$") public void
	 * I_make_prepay_and_verified_the_following_tabs(DataTable excel) throws
	 * Throwable { varFrontPage.createMakeRepayment(ExcelSheetPath, excel); }
	 */

}
