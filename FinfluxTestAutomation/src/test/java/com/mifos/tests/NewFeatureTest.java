package com.mifos.tests;

import org.junit.runner.RunWith;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(format = { "pretty", "html:/root/Desktop/report/target/NewFeatures/cucumber-html-report",
		"json-pretty:/root/Desktop/report/target/NewFeatures/cucumber-json-report.json" },
		features = { "src/test/resources/features/" },
		glue = { "com.mifos.steps" },
		tags = {"@RunnerClassNewFeaturesSpecific, @RunnerClassClientsSpecificSecdep"})

public class NewFeatureTest {

}
