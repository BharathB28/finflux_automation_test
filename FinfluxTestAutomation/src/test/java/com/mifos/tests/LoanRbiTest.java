package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/LoanChargesRbi/cucumber-html-report",
		"json-pretty:target/LoanRbi/cucumber-json-report.json" },
		features = { "src/test/resources/features/" },
		glue = { "com.mifos.steps" },
		tags= {"@RunnerClassLoanRBI" })
public class LoanRbiTest {

}

// This Runner class is for Floatingrates and LoanRBI fetures file.