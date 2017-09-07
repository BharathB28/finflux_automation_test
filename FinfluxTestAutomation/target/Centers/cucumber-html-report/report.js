$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("src\\test\\resources\\features\\test.feature");
formatter.feature({
  "line": 1,
  "name": "RBI",
  "description": "",
  "id": "rbi",
  "keyword": "Feature"
});
formatter.background({
  "line": 3,
  "name": "",
  "description": "",
  "type": "background",
  "keyword": "Background"
});
formatter.step({
  "line": 4,
  "name": "I navigate to mifos using \"default#/\"",
  "keyword": "Given "
});
formatter.step({
  "line": 5,
  "name": "I login into mifos site using \"Login\" excel sheet",
  "rows": [
    {
      "cells": [
        "Login.xlsx"
      ],
      "line": 6
    }
  ],
  "keyword": "And "
});
formatter.step({
  "line": 7,
  "name": "I should see logged in successfully",
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "default#/",
      "offset": 27
    }
  ],
  "location": "LoginSteps.I_navigate_to_mifos_using(String)"
});
formatter.result({
  "duration": 1929679877,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Login",
      "offset": 31
    }
  ],
  "location": "LoginSteps.I_login_into_mifos_site_using_excel_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 5385881959,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 595869957,
  "status": "passed"
});
formatter.scenario({
  "line": 11,
  "name": "4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs",
  "description": "",
  "id": "rbi;4990-glimloan-submit-modify-approve-disburse-verifytabs",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 10,
      "name": "@RunnerClass8"
    }
  ]
});
formatter.step({
  "line": 12,
  "name": "I verified the \"ChargesTab\" details successfully",
  "rows": [
    {
      "cells": [
        "4990-GlimLoan-Submit-Modify-Approve-Disburse-VerifyTabs.xlsx"
      ],
      "line": 13
    }
  ],
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "ChargesTab",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "duration": 43101832829,
  "status": "passed"
});
});