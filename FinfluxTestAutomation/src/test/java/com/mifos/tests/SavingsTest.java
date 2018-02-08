package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:/root/Desktop/report/target/Savings/cucumber-html-report",
		"json-pretty:/root/Desktop/report/target/Savings/cucumber-json-report.json" },
		features = { "src/test/resources/features/Savings.feature" },
		glue = { "com.mifos.steps" })


public class SavingsTest {

}
