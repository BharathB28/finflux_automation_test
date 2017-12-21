package com.mifos.steps;

import java.util.List;

import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class WorkingAndHolidaysSteps {

	final public FrontPage varFrontPage = new FrontPage();
	public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
	
	
	@Then("^I \"([^\"]*)\" holiday$")
	public void I_holiday(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.holiday(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Given("^I create \"([^\"]*)\" As Payments due on non working days$")
	public void I_create_As_Payments_due_on_non_working_days(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.createWorkingDays(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Given("^I create Sat and Sun As \"([^\"]*)\" days$")
	public void I_create_Sat_and_Sun_as_non_working_days(String arg1) throws Throwable {
		varFrontPage.createnonWorkingDays(arg1);
	}


}
