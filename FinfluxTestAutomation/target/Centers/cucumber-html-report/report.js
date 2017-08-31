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
  "duration": 1765244034,
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
  "duration": 5353337574,
  "status": "passed"
});
formatter.match({
  "location": "LoginSteps.I_should_see_login_successfully()"
});
formatter.result({
  "duration": 691853622,
  "status": "passed"
});
formatter.scenario({
  "line": 11,
  "name": "4982-CreateRDProduct-EditInterestChart-ACTIVATERD-DEPOSIT-Withdraw",
  "description": "",
  "id": "rbi;4982-createrdproduct-editinterestchart-activaterd-deposit-withdraw",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 10,
      "name": "@RunnerClass2"
    }
  ]
});
formatter.step({
  "line": 12,
  "name": "I setup the clients",
  "keyword": "Given "
});
formatter.step({
  "line": 13,
  "name": "I entered the values into client from \"Input\" sheet",
  "rows": [
    {
      "cells": [
        "Createclient.xlsx"
      ],
      "line": 14
    }
  ],
  "keyword": "When "
});
formatter.step({
  "line": 15,
  "name": "I set up the new create RD account from \"NewRDInput\" sheet",
  "rows": [
    {
      "cells": [
        "4982-CreateRDProduct-EditInterestChart-ACTIVATERD-DEPOSIT-Withdraw.xlsx"
      ],
      "line": 16
    }
  ],
  "keyword": "When "
});
formatter.step({
  "line": 17,
  "name": "I \"Do Deposit Transaction\" and verified the following tabs",
  "rows": [
    {
      "cells": [
        "4982-CreateRDProduct-EditInterestChart-ACTIVATERD-DEPOSIT-Withdraw.xlsx",
        "RecurringDeposit",
        "RecurringDeposit1"
      ],
      "line": 18
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 19,
  "name": "I \"Post Interest And withraw Amount\" and verified the following tabs",
  "rows": [
    {
      "cells": [
        "4982-CreateRDProduct-EditInterestChart-ACTIVATERD-DEPOSIT-Withdraw.xlsx",
        "Modify Transaction",
        "Modify Transaction1"
      ],
      "line": 20
    }
  ],
  "keyword": "Then "
});
formatter.step({
  "line": 21,
  "name": "I verified the \"RD Transaction \u0026 TransID\" details successfully",
  "rows": [
    {
      "cells": [
        "4982-CreateRDProduct-EditInterestChart-ACTIVATERD-DEPOSIT-Withdraw.xlsx"
      ],
      "line": 22
    }
  ],
  "keyword": "And "
});
formatter.match({
  "location": "ClientSteps.I_setup_the_clients()"
});
formatter.result({
  "duration": 1984938686,
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
  "duration": 9634746921,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "NewRDInput",
      "offset": 41
    }
  ],
  "location": "ClientSteps.I_set_up_the_new_create_RD_account_from_sheet(String,String\u003e)"
});
formatter.result({
  "duration": 33074845344,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Do Deposit Transaction",
      "offset": 3
    }
  ],
  "location": "ClientSteps.I_and_verified_the_following_tabs(String,String\u003e\u003e)"
});
formatter.result({
  "duration": 25458128907,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Post Interest And withraw Amount",
      "offset": 3
    }
  ],
  "location": "ClientSteps.I_and_verified_the_following_tabs(String,String\u003e\u003e)"
});
formatter.result({
  "duration": 26034212650,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "RD Transaction \u0026 TransID",
      "offset": 16
    }
  ],
  "location": "ClientSteps.I_verified_the_details_successfully(String,String\u003e)"
});
formatter.result({
  "duration": 838011087,
  "status": "passed"
});
});