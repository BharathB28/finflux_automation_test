Feature:RBI

Background:
	Given I navigate to mifos using "default#/"
	And I login into mifos site using "Login" excel sheet
		|Login.xlsx|
	Then I should see logged in successfully


@RunnerClassClientsSpecific
Scenario: 5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015
      Given I Navigate and create Loan Provisioning "Criteria" from "Loan Provisioning Criteria" Sheet
                |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction1|
	  When I set up the new create loan from "NewLoanInput2" sheet
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction2|
	  When I set up the new create loan from "NewLoanInput3" sheet
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction3|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|
      And I "Read Journal Entries ID" and verified the following tabs
	            |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|Modify Transaction4|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5026-DISBURSELOANon01JAN2015-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-01MAR2015.xlsx|LoanProvisioningAccural|
	  
@RunnerClassClientsSpecific
Scenario: 5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction|
	  When I set up the new create loan from "NewLoanInput1" sheet
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction1|
	  When I set up the new create loan from "NewLoanInput2" sheet
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction2|
	  When I set up the new create loan from "NewLoanInput3" sheet
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction3|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|
      And I "Read Journal Entries ID" and verified the following tabs
	            |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|Modify Transaction4|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5027-DISBURSESimpleLoan-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-02MAR2015.xlsx|LoanProvisioningAccural|
	  
@RunnerClassClientsSpecific
Scenario: 5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
      Then I "undo transaction from transaction tab" and verified the following tabs
	  			|5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|Modify Transaction1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals1" details successfully 
	  			|5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|
      And I "Read Journal Entries ID" and verified the following tabs
	            |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|Modify Transaction2|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5028-DISBURSESimpleLoan-UndoRepayment-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-03MAR2015.xlsx|LoanProvisioningAccural|
	  
@RunnerClassClientsSpecific
Scenario: 5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|
	  And I "MakeEarlyRepayment Lessamount" and verified the following tabs
	            |5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|
      And I "Read Journal Entries ID" and verified the following tabs
	            |5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|Modify Transaction2|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5029-DISBURSESimpleLoan-EarlyRepay-RUNSCHEDULERJOB-VIEWJOURNALENTRIES-ON-05MAR2015.xlsx|LoanProvisioningAccura|
	  
  	  
@RunnerClassClientsSpecific
Scenario: 5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015
      Given I setup the clients
	  When I entered the values into client from "Input" sheet
	  			|Createclient.xlsx|
	  When I set up the new create loan from "NewLoanInput" sheet
	  			|5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
	  And I "MakeRepayment" and verified the following tabs
	            |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|Modify Transaction|
	  Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry" Sheet
	            |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
      And I verified the "Loan Provisioning Journals" details successfully 
	  			|5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
      Then I "PrePay Loan" and verified the following tabs
	  			|5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|Modify Transaction1|
      Given I Navigate and create Loan Provisioning "Entries" from "Create Provisioning Entry1" Sheet
	            |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
      And I verified the "Loan Provisioning Journals1" details successfully 
	  			|5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|
	  And I "Read Journal Entries ID" and verified the following tabs
	            |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|Modify Transaction2|
	  And I Navigate to Accounting web page          
	  And I search with transaction id & verified the accounting entries
                |5030-DISBURSEInterestRecalLoan-VIEWJOURNALENTRIES-ON-06MAR2015-PrepayLoan-VIEWJOURNALENTRIES-ON-01APR2015.xlsx|LoanProvisioningAccural|
         