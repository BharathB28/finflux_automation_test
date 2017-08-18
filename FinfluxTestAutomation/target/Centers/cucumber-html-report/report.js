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
  "duration": 1458057227,
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
  "duration": 5353180562,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 901993512,
  "status": "passed"
});
formatter.scenario({
  "line": 9,
  "name": "4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013",
  "description": "",
  "id": "rbi;4619-nonworksatandsun-repaydue-movetopreviousworkingday-disbdailyloanon02jan2013",
  "type": "scenario",
  "keyword": "Scenario"
});
formatter.step({
  "line": 10,
  "name": "I create \"move to previous working day\" As Payments due on non working days",
  "keyword": "Given "
});
formatter.step({
  "line": 11,
  "name": "I setup the clients",
  "keyword": "Given "
});
formatter.step({
  "line": 12,
  "name": "I entered the values into client from \"Input\" sheet",
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 13
    }
  ],
  "keyword": "When "
});
formatter.step({
  "line": 14,
  "name": "I should see client created successfully from \"Output\" sheet",
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 15
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 16,
  "name": "I set up the new create loan from \"NewLoanInput\" sheet",
  "rows": [
    {
      "cells": [
        "4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx"
      ],
      "line": 17
    }
  ],
  "keyword": "When "
});
formatter.step({
  "line": 18,
  "name": "I verified the \"Repayment Schedule\" details successfully",
  "rows": [
    {
      "cells": [
        "4619-NonWorkSatandSun-REPAYDUE-MOVEtoPREVIOUSWORKINGDAY-DISBDAILYLOANon02JAN2013.xlsx"
      ],
      "line": 19
    }
  ],
  "keyword": "And "
});
formatter.match({
  "arguments": [
    {
      "val": "move to previous working day",
      "offset": 10
    }
  ],
  "location": "ClientSteps.I_create_As_Payments_due_on_non_working_days(String)"
});
formatter.result({
  "duration": 11473778594,
  "status": "passed"
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients()"
});
formatter.result({
  "duration": 1986022844,
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
  "duration": 10550764948,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Output",
      "offset": 47
    }
  ],
  "location": "ClientSteps.I_should_see_client_created_successfully_from_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 6167072213,
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
  "duration": 40449581931,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Repayment Schedule",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "duration": 5370863312,
  "status": "passed"
});
});