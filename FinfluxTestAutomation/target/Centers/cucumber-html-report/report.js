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
  "duration": 1550357482,
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
  "duration": 5576320115,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 660042676,
  "status": "passed"
});
formatter.scenario({
  "line": 11,
  "name": "4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013",
  "description": "",
  "id": "rbi;4624-nonworksatandsun-repaydue-movetonextrepaymentmeetingday-center-disbweeklyloanon01jan2013-collectionsheeton08jan2013",
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
  "name": "I create \"move to next repayment day\" As Payments due on non working days",
  "rows": [
    {
      "cells": [
        "4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx"
      ],
      "line": 13
    }
  ],
  "keyword": "Given "
});
formatter.step({
  "line": 14,
  "name": "I setup the center",
  "keyword": "Given "
});
formatter.step({
  "line": 15,
  "name": "I entered the values into center from \"Input\" sheet",
  "rows": [
    {
      "cells": [
        "4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx"
      ],
      "line": 16
    }
  ],
  "keyword": "When "
});
formatter.step({
  "line": 17,
  "name": "I entered the values into group from \"Group\" sheet",
  "rows": [
    {
      "cells": [
        "4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx"
      ],
      "line": 18
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 19,
  "name": "I entered the values into client from \"Input\" sheet",
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 20
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 21,
  "name": "I set up the new create loan from \"NewLoanInput\" sheet",
  "rows": [
    {
      "cells": [
        "4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx"
      ],
      "line": 22
    }
  ],
  "keyword": "When "
});
formatter.step({
  "line": 23,
  "name": "I navigate to collection Sheet",
  "keyword": "Then "
});
formatter.step({
  "line": 24,
  "name": "I Make Repayment Through \"Collection\" sheet",
  "rows": [
    {
      "cells": [
        "4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx"
      ],
      "line": 25
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 26,
  "name": "I navigate To Loan Account Page",
  "keyword": "And "
});
formatter.step({
  "line": 27,
  "name": "I verified the following Tabs details successfully",
  "rows": [
    {
      "cells": [
        "4624-NonWorkSatandSun-REPAYDUE-MOVEtoNEXTREPAYMENTMEETINGDAY-CENTER-DISBWeeklyLOANon01JAN2013-Collectionsheeton08JAN2013.xlsx",
        "Summary",
        "Repayment Schedule",
        "Transactions"
      ],
      "line": 28
    }
  ],
  "keyword": "Then "
});
formatter.match({
  "arguments": [
    {
      "val": "move to next repayment day",
      "offset": 10
    }
  ],
  "location": "ClientSteps.I_create_As_Payments_due_on_non_working_days(String,String\u003e)"
});
formatter.result({
  "duration": 11705091791,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_setup_the_center()"
});
formatter.result({
  "duration": 4298505004,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Input",
      "offset": 39
    }
  ],
  "location": "ClientSteps.I_entered_the_values_into_center_from_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 37764595501,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Group",
      "offset": 38
    }
  ],
  "location": "ClientSteps.I_entered_the_values_into_group_from_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 21605270692,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Input",
      "offset": 39
    }
  ],
  "location": "ClientSteps.I_entered_the_values_into_client_from_sheet_Verified(String,String\u003e)"
});
formatter.result({
  "duration": 9485287912,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "NewLoanInput",
      "offset": 35
    }
  ],
  "location": "ClientSteps.I_set_up_the_new_create_loan_from_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 45751694825,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_navigate_to_collection_Sheet()"
});
formatter.result({
  "duration": 3621544165,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Collection",
      "offset": 26
    }
  ],
  "location": "ClientSteps.I_Make_Repayment_Through_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 25020761573,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_navigate_To_Loan_Account_Page()"
});
formatter.result({
  "duration": 3500939306,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_verified_the_following_Tabs_details_successfully(String\u003e\u003e)"
});
formatter.result({
  "duration": 1407237025,
  "error_message": "java.lang.AssertionError: Tab Name:Summary Row number:1 Column number:1 Expected result:3337.19 Actual result:3327.32\r\n\tat org.junit.Assert.fail(Assert.java:88)\r\n\tat com.mifos.pages.FrontPage.verifyColumnDetails(FrontPage.java:1776)\r\n\tat com.mifos.pages.FrontPage.verifyLoanTabData(FrontPage.java:880)\r\n\tat com.mifos.steps.ClientSteps.I_verified_the_following_Tabs_details_successfully(ClientSteps.java:342)\r\n\tat ✽.Then I verified the following Tabs details successfully(src\\test\\resources\\features\\test.feature:27)\r\n",
  "status": "failed"
});
formatter.embedding("image/png", "embedded0.png");
});