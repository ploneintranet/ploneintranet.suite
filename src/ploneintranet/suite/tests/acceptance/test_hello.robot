*** Settings ***

Resource  plone/app/robotframework/selenium.robot
Resource  plone/app/robotframework/keywords.robot
Resource  plone/app/robotframework/saucelabs.robot

Library  Remote  ${PLONE_URL}/RobotRemote
Library  Selenium2Library  run_on_failure=Capture Page Screenshot

Test Setup  Open test browser
Test Teardown  Close all browsers

*** Test Cases ***

Site Administrator can access dashboard
    Given I'm logged in as a 'Site Administrator'
     Then I see the Dashboard

Site Administrator should see testing content
    Given I'm logged in as a 'manager'
     Then I see testing content

*** Keywords ***

I'm logged in as a '${ROLE}'
    Enable autologin as  ${ROLE}

I see the Dashboard
    Element should be visible  css=#portlet-news

I see testing content
    Page Should Contain  Leave a comment

    Page Should Contain  News
    Page Should Contain  Air India Joins Star Alliance First Indian Airline
    Page Should Contain  Star Alliance Officially Opens New Lounge At
    Page Should Contain  ANA and Ethiopian to codeshare In December

    Page Should Contain  Workspaces
    Page Should Contain Link  Open Market Committee
    Page Should Contain Link  Parliamentary papers guidance
    Page Should Contain  Charlotte Holzer published Proposal
    Page Should Contain Link  All workspace activities

    Page Should Contain  Tasks
    Page Should Contain  Baggage handling regulations
    Page Should Contain Link  Prepare Christmas get-together
    Page Should Contain Link  Inquire after References
    Page Should Contain Link  Finalise Budget
    Page Should Contain Link  Prepare sales presentation
    Page Should Contain Link  Write SWOT analysis

    Page Should Contain  Personal tasks
    Page Should Contain Link  Talk to HR about vacancy
    Page Should Contain Link  Shop Groceries

    Page Should Contain Link  Guido Stevens
    Page Should Contain Link  Test Document
    Page Should Contain Link  Parliamentary papers guidance
    Page Should Contain Link  See more...


    Click Link  Open Market Committee
    Page Should Contain Link  Projection Material
    Page Should Contain Link  See more...

    Page Should Contain  Traces through Time data workshop
    Page Should Contain  2014 Meetings
    Page Should Contain  Meeting documents, statements, and minutes
    Page Should Contain  Manage Information

    Page Should Contain Link  Create document
    Page Should Contain Link  Create folder
