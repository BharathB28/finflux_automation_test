package com.mifos.steps;

import java.util.List;

import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class LoanSteps {

	public FrontPage varFrontPage = FrontPage.getInstance();
    public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();

	@When("^I set up the new create loan from \"([^\"]*)\" sheet$")
	public void I_set_up_the_new_create_loan_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewLoan(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I add Guarentor for loan application from \"([^\"]*)\" sheet$")
	public void I_add_Guarentor_for_loan_application(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewSaving(ExcelSheetPath, excelSheetName, sheetName);
	}

	@When("^I modify New Loan Account from \"([^\"]*)\" sheet$")
	public void I_modify_New_Loan_Account_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewLoan(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I disburse loan from \"([^\"]*)\" sheet$")
	public void I_disburse_loan_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupNewLoan(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I verified the \"([^\"]*)\" details and read the transaction Id$")
	public void I_verified_the_details_and_read_the_transaction_Id(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyAndReadTransactionId(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I make repayment and verified the following tabs$")
	public void I_make_repayment_and_verified_the_following_tabs(List<List<String>> excel) throws Throwable {

		for (List<String> excelSheet : excel) {
			// varFrontPage.makeAndVerifyRepayment(ExcelSheetPath, excelSheet);
			for (int i = 1; i < excelSheet.size(); i++) {
				varFrontPage.makeAndVerifyRepayment(ExcelSheetPath, excelSheet.get(0), excelSheet.get(i));
			}
		}
	}
	
	// * Then I verified the following Tabs details successfully Summary|Repayment
	// * Schedule|Transactions
	 
	@Then("^I verified the following Tabs details successfully$")
	public void I_verified_the_following_Tabs_details_successfully(List<List<String>> excel) throws Throwable {

		for (List<String> excelSheet : excel) {
			// varFrontPage.makeAndVerifyRepayment(ExcelSheetPath, excelSheet);
			for (int i = 1; i < excelSheet.size(); i++) {
				varFrontPage.verifyLoanTabData(ExcelSheetPath, excelSheet.get(0), excelSheet.get(i));
			}
		}
	}

	@Then("^I make repayment and read the transaction Id$")
	public void I_make_repayment_and_read_the_transaction_Id(List<List<String>> excel) throws Throwable {

		for (List<String> excelSheet : excel) {
			for (int i = 1; i < excelSheet.size(); i++) {
				varFrontPage.makeRepaymentAndReadTransactionId(ExcelSheetPath, excelSheet.get(0), excelSheet.get(i));
			}
			// varFrontPage.makeRepaymentAndReadTransactionId(ExcelSheetPath,
			// excelSheet);

		}
	}
	

	@Then("^I undo the disbursal$")
	public void I_undo_the_disbursal() throws Throwable {
		varFrontPage.undoDisbursal();
	}
	
	
	// * Then I "Edit Date " In Edit Repayment Schedule page
	 
	@Then("^I \"([^\"]*)\" In Edit Repayment Schedule page$")
	public void I_In_Edit_Repayment_Schedule_page(String arg1, List<List<String>> excelSheet) throws Throwable {
		for (List<String> option : excelSheet) {
			for (int i = 1; i < option.size(); i++) {
				varFrontPage.editRepaymentSchedulePageVarInstalment(ExcelSheetPath, option.get(0), option.get(i));
			}
		}

	}

	@Then("^I navigate To Loan Account Page$")
	public void I_navigate_To_Loan_Account_Page() throws Throwable {
		varFrontPage.navigateLoanAccounting();
	}
}
