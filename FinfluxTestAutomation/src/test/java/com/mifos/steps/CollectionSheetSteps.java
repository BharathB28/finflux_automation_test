package com.mifos.steps;

import java.util.List;

import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.mifos.common.TenantsUtils;
import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;

import cucumber.api.java.en.Then;

public class CollectionSheetSteps {

	public FrontPage varFrontPage = FrontPage.getInstance();
    public String ExcelSheetPath = varFrontPage.getClientExcelSheetPath();
	final public MifosWebPage webpage = new MifosWebPage();


	@Then("^I navigate to collection Sheet$")
	public void I_navigate_to_collection_Sheet() throws Throwable {
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "entercollectionsheet");
		String expectedCollectionPageUrl = TenantsUtils.getLocalTenantUrl() + "entercollectionsheet";
		String collectionPage = MifosWebPage.getWebDriver().getCurrentUrl();
		Thread.sleep(2000);
		webpage.select_office();
		int i = 3;
		while (!collectionPage.contains("entercollectionsheet") && i > 0) {
			try {
				new WebDriverWait(MifosWebPage.getWebDriver(), 30)
						.until(ExpectedConditions.urlMatches(expectedCollectionPageUrl));

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "entercollectionsheet");
				collectionPage = MifosWebPage.getWebDriver().getCurrentUrl();
				i--;
			}
		}

	}

	@Then("^I navigate to Individual collection Sheet$")
	public void I_navigate_to_Individual_collection_Sheet() throws Throwable {
		MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "individualcollectionsheet");
		String expectedCollectionPageUrl = TenantsUtils.getLocalTenantUrl() + "individualcollectionsheet";
		String collectionPage = MifosWebPage.getWebDriver().getCurrentUrl();
		int i = 3;
		while (!collectionPage.contains("individualcollectionsheet") && i > 0) {
			try {
				new WebDriverWait(MifosWebPage.getWebDriver(), 30)
						.until(ExpectedConditions.urlMatches(expectedCollectionPageUrl));

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				MifosWebPage.navigateToUrl(TenantsUtils.getLocalTenantUrl() + "individualcollectionsheet");
				collectionPage = MifosWebPage.getWebDriver().getCurrentUrl();
				i--;
			}
		}

	}
	
	
	@Then("^I Make Repayment Through \"([^\"]*)\" sheet$")
	public void I_Make_Repayment_Through_sheet(String sheetName, List<String> excelSheet) throws Throwable {
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.payThroughCollectionSheet(ExcelSheetPath, excelSheetName, sheetName);
	}

}
