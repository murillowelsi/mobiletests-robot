*** Settings ***
Documentation    This script starts and run simple tasks on YouTube app    
Library          AppiumLibrary
Resource         ./variables.robot

*** Test Cases ***
Search Content
    Open YouTube
    Search For              The Cure
    Select Playlist Menu
    Navigate Menus
    Close Application

*** Keywords ***
Open Youtube
    Open Application                    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                            platformVersion=${PLATFORM_VERSION}    
    ...                                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}	appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
    Wait Until Page Contains Element    ${BTN_SEARCH}

Search For
    [Arguments]    ${content}

    Click Element                       ${BTN_SEARCH}
    Wait Until Page Contains Element    ${INPUT_SEARCH}
    Input Text                          ${INPUT_SEARCH}    ${content} 
    Press Keycode                       66
    Wait Until Page Contains Element    ${BADGE_ICON}
    Select Channel

Select Channel
    Click Element                       ${BADGE_ICON}
    Wait Until Page Contains Element    ${TITLE} 
    Element Text Should Be              ${TITLE}         The Cure

Select Playlist Menu
    Click Element                       ${PLAYLISTS}
    Wait Until Page Contains Element    ${CREATED_PLAYLISTS_ASSERT}
    Element Text Should Be              ${CREATED_PLAYLISTS_ASSERT}    Created playlists    
    Wait Until Page Contains Element    ${ALBUMS_ASSERT} 
    Element Text Should Be              ${ALBUMS_ASSERT}               Albums & Singles

Navigate Menus
    Click Element    ${NAVIGATEUP_BTN}
    Click Element    ${HOME_BTN}
    Click Element    ${TRENDING_BTN}
    Click Element    ${SUBSCRIPTIONS_BTN}
    Click Element    ${INBOX_BTN}
    Click Element    ${LIB_BTN}