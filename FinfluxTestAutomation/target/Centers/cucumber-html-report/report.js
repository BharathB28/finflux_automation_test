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
  "duration": 1456767842,
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
  "duration": 5369782140,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 846044783,
  "status": "passed"
});
formatter.scenario({
  "line": 11,
  "name": "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify",
  "description": "",
  "id": "rbi;4989-disbloan-applyclientcharge-payandundo-verify",
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
  "name": "I setup the center",
  "keyword": "Given "
});
formatter.step({
  "line": 13,
  "name": "I entered the values into center from \"Input\" sheet",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx"
      ],
      "line": 14
    }
  ],
  "keyword": "When "
});
formatter.step({
  "line": 15,
  "name": "I entered the values into group from \"Group\" sheet",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx"
      ],
      "line": 16
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 17,
  "name": "I entered the values into client from \"Input\" sheet",
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 18
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 19,
  "name": "I set up the new create loan from \"NewLoanInput\" sheet",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx"
      ],
      "line": 20
    }
  ],
  "keyword": "When "
});
formatter.step({
  "line": 21,
  "name": "I \"Add client charge\" and verified the following tabs",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx",
        "Modify Transaction"
      ],
      "line": 22
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 23,
  "name": "I navigate to scheduler job \u0026 execute \"Apply Recurring Charge On Client\"",
  "keyword": "Then "
});
formatter.step({
  "line": 24,
  "name": "I \"Navigate to client and Verify Charge Overview\" and verified the following tabs",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx",
        "Modify Transaction1"
      ],
      "line": 25
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 26,
  "name": "I verified the \"Reccuring Charges Transaction\" details successfully",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx"
      ],
      "line": 27
    }
  ],
  "keyword": "And "
});
formatter.step({
  "line": 28,
  "name": "I \"Pay Reccuring Charge\" and verified the following tabs",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx",
        "Modify Transaction2"
      ],
      "line": 29
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 30,
  "name": "I \"Navigate to client and Verify Charge Overview\" and verified the following tabs",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx",
        "Modify Transaction1"
      ],
      "line": 31
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 32,
  "name": "I verified the \"Reccuring Charges Transaction1\" details successfully",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx"
      ],
      "line": 33
    }
  ],
  "keyword": "And "
});
formatter.step({
  "line": 34,
  "name": "I Navigate to Accounting web page",
  "keyword": "And "
});
formatter.step({
  "line": 35,
  "name": "I search with transaction id \u0026 verified the accounting entries",
  "rows": [
    {
      "cells": [
        "4989-DisbLoan-ApplyClientCharge-PayAndUndo-Verify.xlsx",
        "ClientChargeAccural"
      ],
      "line": 36
    }
  ],
  "keyword": "Then "
});
formatter.match({
  "location": "ClientSteps.I_setup_the_center()"
});
formatter.result({
  "duration": 4462918234,
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
  "duration": 37433738538,
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
  "duration": 17858661728,
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
  "duration": 9977574856,
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
  "duration": 44001741225,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Add client charge",
      "offset": 3
    }
  ],
  "location": "ClientSteps.I_and_verified_the_following_tabs(String,String\u003e\u003e)"
});
formatter.result({
  "duration": 18442594420,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Apply Recurring Charge On Client",
      "offset": 39
    }
  ],
  "location": "ClientSteps.I_navigate_to_scheduler_job_execute(String)"
});
formatter.result({
  "duration": 7374210081,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Navigate to client and Verify Charge Overview",
      "offset": 3
    }
  ],
  "location": "ClientSteps.I_and_verified_the_following_tabs(String,String\u003e\u003e)"
});
formatter.result({
  "duration": 16234563540,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Reccuring Charges Transaction",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "duration": 34882091671,
  "error_message": "java.lang.AssertionError:  Unable to click \n\r\n\tat org.junit.Assert.fail(Assert.java:88)\r\n\tat com.mifos.pages.FrontPage.RecurringCharges(FrontPage.java:1075)\r\n\tat com.mifos.steps.ClientSteps.I_verified_the_details_successfully(ClientSteps.java:296)\r\n\tat ✽.And I verified the \"Reccuring Charges Transaction\" details successfully(src\\test\\resources\\features\\test.feature:26)\r\n",
  "status": "failed"
});
formatter.match({
  "arguments": [
    {
      "val": "Pay Reccuring Charge",
      "offset": 3
    }
  ],
  "location": "ClientSteps.I_and_verified_the_following_tabs(String,String\u003e\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "arguments": [
    {
      "val": "Navigate to client and Verify Charge Overview",
      "offset": 3
    }
  ],
  "location": "ClientSteps.I_and_verified_the_following_tabs(String,String\u003e\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "arguments": [
    {
      "val": "Reccuring Charges Transaction1",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "ClientSteps.I_Navigate_to_Accounting()"
});
formatter.result({
  "status": "skipped"
});
formatter.match({
  "location": "ClientSteps.I_search_with_transaction_id_verified_the_accounting_entries(String\u003e\u003e)"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded0.png");
});