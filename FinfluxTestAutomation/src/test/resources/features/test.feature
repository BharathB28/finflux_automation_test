Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClass8 
Scenario: 4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1
	 Given I setup the center
	 When I entered the values into center from "Input" sheet
	 			|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I entered the values into group from "Group" sheet
                |4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|		  								  				  				  			
	 Then I entered the values into client from "Input1" sheet
	 	        |4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I entered the values into client from "Input2" sheet
	 	        |4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I entered the values into client from "Input3" sheet
	 	        |4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 When I set up the new create loan from "BulkJLGLoanInput" sheet
	  			|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I disburse loan from "ToClient1" sheet
	  			|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|
	 Then I verified the following Tabs details successfully 
	    		|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1.xlsx|Summary|Repayment Schedule|Transactions|
	 Then I disburse loan from "ToClient2" sheet
	  			|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1-2ndClient.xlsx|
	 Then I verified the following Tabs details successfully 
	    		|4964-BulkJLGLOANon01JAN201-DISBLOAN-OnlyForClient1-2ndClient.xlsx|Summary|Repayment Schedule|
	 
