package com.mifos.steps;

import java.util.List;

import com.mifos.common.TenantsUtils;
import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class GenericSteps {

	public FrontPage varFrontPage = FrontPage.getInstance();
    public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();


	@Given("^I navigate to Teller/Cashier Management Sheet$")
	public void I_navigate_to_Teller_Cashier_Sheet() throws Throwable {
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "tellers");
		Thread.sleep(FrontPage.getResourceKey("mediumWait"));
		varFrontPage.verifySuccessMessage("CreateTeller", "New Teller");

	}

	@When("^I modify New Account from \"([^\"]*)\" sheet$")
	public void I_modify_New_Account_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewSaving(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I verified the \"([^\"]*)\" details successfully$")
	public void I_verified_the_details_successfully(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		if (sheetName.contains("Loan Provisioning Journals")) {
			varFrontPage.verifyProvisionData(ExcelSheetPath, excelSheetName, sheetName);
		} else if (sheetName.contains("TransferDetails")) {
			varFrontPage.verifyTransferData(ExcelSheetPath, excelSheetName, sheetName);
		} else if (sheetName.contains("GlimOfClient")) {
			varFrontPage.GlimTab(ExcelSheetPath, excelSheetName, sheetName);
		} else if (sheetName.contains("ChargesTab") || sheetName.contains("GlimRepaymentScheduleOfClient")) {
			varFrontPage.charges(ExcelSheetPath, excelSheetName, sheetName);
		} else if (sheetName.contains("Reccuring Client Data") || sheetName.contains("Reccuring Charges Transaction")) {
			varFrontPage.RecurringCharges(ExcelSheetPath, excelSheetName, sheetName);
		} else if (sheetName.contains("Saving") || sheetName.contains("FixedDeposit")
				|| sheetName.contains("RecurringDeposit") || sheetName.contains("RD") || sheetName.contains("FD")) {
			varFrontPage.verifySavingData(ExcelSheetPath, excelSheetName, sheetName);
		} else if (sheetName.contains("Share")) {
			varFrontPage.verifyShareData(ExcelSheetPath, excelSheetName, sheetName);
		} else if (sheetName.contains("Teller") || sheetName.contains("Product")) {
			varFrontPage.verifyTellerData(ExcelSheetPath, excelSheetName, sheetName);
		} else if (sheetName.contains("Guarantor List") || sheetName.contains("Guarantor Hold Transactions")) {
			varFrontPage.verifyGuarantorListData(ExcelSheetPath, excelSheetName, sheetName);
		} else {
			varFrontPage.verifyLoanTabData(ExcelSheetPath, excelSheetName, sheetName);
		}
	}

	@Then("^i validate and Verify from \"([^\"]*)\" sheet$")
	public void i_validate_and_Verify_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyAndValidate(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I Verify \"([^\"]*)\" not visible$")
	public void I_Verify_not_visible(String arg1, List<String> excelSheet) throws Throwable {
		String element = excelSheet.get(0).toString();
		varFrontPage.verifyElementNotVisible(element);

	}

	@Then("^I \"([^\"]*)\" and verified the following tabs$")
	public void I_and_verified_the_following_tabs(String arg1, List<List<String>> excelSheet) throws Throwable {
		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.loanTabDetails(ExcelSheetPath, option.get(0), option.get(i));
			}
		}
	}

	
	// * Then I Modify Transaction
	 
	@Then("^I Modify Transaction$")
	public void I_Modify_Transaction(List<List<String>> excelSheet) throws Throwable {

		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.modifyTransaction(ExcelSheetPath, option.get(0), option.get(i));
			}
		}

	}

	@Given("^I navigate To \"([^\"]*)\" Page$")
	public void I_navigate_To_Specified_Page(String url) throws Throwable {
		varFrontPage.navigateToPage(url);
	}

	@Then("^I run SQL Command to reset \"([^\"]*)\" data$")
	public void I_run_SQL_Command_to_reset_data(String arg1, List<String> commands) throws Throwable {
		String command = commands.get(0).toString();
		varFrontPage.executeSqlCommand(command);
	}

	@Then("^I navigate to clients payment page and make Payment$")
	public void I_Navigate_To_Clients_Payment_Page_And_Make_Payment(List<List<String>> excel) throws Throwable {

		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "clientpayments/"
				+ MifosWebPage.currentClientUrl.split("#/viewclient/")[1]);

		for (List<String> option : excel) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.loanTabDetails(ExcelSheetPath, option.get(0), option.get(i));
			}
		}
	}

	@Then("^I navigate to On demand SMS page and Send SMS$")
	public void I_Navigate_To_SMS_Page_And_send_SMS(List<List<String>> excel) throws Throwable {

		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "sms/");

		for (List<String> option : excel) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.loanTabDetails(ExcelSheetPath, option.get(0), option.get(i));
			}
		}
	}

	@Given("^I navigate to Entity Mapping And Map Office Specific Products$")
	public void I_Navigate_To_Entity_Mapping_And_Map_Office_Products(List<List<String>> excel) throws Throwable {

		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "entitytoentitymapping/");

		for (List<String> option : excel) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.loanTabDetails(ExcelSheetPath, option.get(0), option.get(i));
			}
		}
	}

}
