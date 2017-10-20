package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:target/ClientsSpecific/cucumber-html-report",
		"json-pretty:target/ClientsSpecific/cucumber-json-report.json" },
		features = { "src/test/resources/features/Chaitanya.feature" },
		glue = { "com.mifos.steps" })

public class ChaitanyaTest {

}
