/**
 *
 */
package com.mifos.steps;

import java.util.List;

import org.openqa.selenium.By;

import com.mifos.common.TenantsUtils;
import com.mifos.pages.FrontPage;
import com.mifos.pages.MifosWebPage;
import com.mifos.testing.framework.webdriver.WebDriverAwareWebPage;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;


public class LoginSteps extends WebDriverAwareWebPage{

	final public FrontPage varFrontPage = FrontPage.getInstance();
	public String excelSheetPath = null;
	
	@Given("^I navigate to mifos using \"([^\"]*)\"$")
	public void I_navigate_to_mifos_using(String tenantName) throws Throwable {
		String tenant = tenantName;
		String url = MifosWebPage.BASE_URL+tenant ;
		TenantsUtils.setLocalTenantUrl(url);
		MifosWebPage.navigateToUrl(url);
		boolean loginPageVisible = true;		
		while (loginPageVisible) {
			if (!getWebDriver().findElement(By.id("uid")).isDisplayed()) {
				Thread.sleep(3000);
//				getWebDriver().get(getWebDriver().getCurrentUrl());
				getWebDriver().navigate().refresh();
				
			}else if (getWebDriver().findElement(By.id("uid")).isDisplayed()){
				loginPageVisible = false;
			}
				
		}
	}
	
		

	@Given("^I login into mifos site using \"([^\"]*)\" excel sheet$")
	public void I_login_into_mifos_site_using_excel_sheet(String sheetName,
			List<String> excelSheet) throws Throwable {
		excelSheetPath = varFrontPage.getLoginExcelSheetPath();
		String excelSheetName = excelSheet.get(0).toString();
		varFrontPage.setupLogin(excelSheetPath, excelSheetName, sheetName);
		
	}
	/** VERIFICATION */

	@Then("^I should see logged in successfully$")
	public void I_should_see_login_successfully() throws Throwable {
		varFrontPage.verifyPartialSuccessMessage("frontend.logged.successfully",
				"Welcome,", "css");
	}
	
	@Given("^I logout from mifos site$")
	public void I_should_logout_successfully() throws Throwable {
		getWebDriver().findElement(By.id("user-dropdown")).click();
		Thread.sleep(2000);
		getWebDriver().findElement(By.id("logout")).click();
		Thread.sleep(2000);
		
	}
}
