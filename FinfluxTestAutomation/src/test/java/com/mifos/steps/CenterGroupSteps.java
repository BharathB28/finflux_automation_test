package com.mifos.steps;

import java.util.List;

import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CenterGroupSteps {

	final public FrontPage varFrontPage = new FrontPage();
	public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
	
	@Given("^I setup the group$")
	public void I_setup_the_group() throws Throwable {
		// ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
		varFrontPage.groupNavigation();
	}

	@When("^I entered the values into group from \"([^\"]*)\" sheet$")
	public void I_entered_the_values_into_group_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupGroup(ExcelSheetPath, excelSheetName, sheetName);
		System.out.println("group Created");
	}

	@Given("^I setup the village$")
	public void I_setup_the_village() throws Throwable {
		varFrontPage.VillageNavigation();
	}

	@Given("^I setup the center$")
	public void I_setup_the_center() throws Throwable {
		varFrontPage.centerNavigation();
	}

	@When("^I entered the values into village from \"([^\"]*)\" sheet$")
	public void I_entered_the_values_into_village_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupGroup(ExcelSheetPath, excelSheetName, sheetName);

	}

	@When("^I entered the values into center from \"([^\"]*)\" sheet$")
	public void I_entered_the_values_into_center_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupCenter(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I Add Group for created center from \"([^\"]*)\" sheet$")
	public void I_Add_Group_for_created_center_from_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupCenter(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I Add Dupicate Group for created center from \"([^\"]*)\" sheet$")
	public void I_Add_Dupicate_Group_for_created_center_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupCenter(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I should see Center created successfully from \"([^\"]*)\" sheet$")
	public void I_should_see_Center_created_successfully_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.verifyAndValidate(ExcelSheetPath, excelSheetName, sheetName);
	}

	@Then("^I Navigate Back to Current Center Page from \"([^\"]*)\" sheet$")
	public void I_Navigate_Back_to_Current_Center_Page_from_sheet(String sheetName, List<String> excelSheet)
			throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.navigateToCurrentCenterPage(ExcelSheetPath, excelSheetName, sheetName);
	}
}
