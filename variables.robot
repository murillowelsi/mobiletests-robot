*** Variables ***
# Setup do device
${REMOTE_URL}          http://localhost:4723/wd/hub
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    10.0
${DEVICE_NAME}         Pixel 2 API R
${APP_PACKAGE}         com.google.android.youtube
${APP_ACTIVITY}        com.google.android.youtube.HomeActivity
${AUTOMATION_NAME}     appium

# locators
${BTN_SEARCH}                  accessibility_id=Search
${INPUT_SEARCH}                id=com.google.android.youtube:id/search_edit_text
${TITLE}                       id=com.google.android.youtube:id/channel_title
${BADGE_ICON}                  id=com.google.android.youtube:id/badge_icon
${PLAYLISTS}                   accessibility_id=Playlists
${CREATED_PLAYLISTS_ASSERT}    accessibility_id=Created playlists Heading
${ALBUMS_ASSERT}               accessibility_id=Albums & Singles Heading
${NAVIGATEUP_BTN}              accessibility_id=Navigate up
${HOME_BTN}                    accessibility_id=Home
${TRENDING_BTN}                accessibility_id=Trending
${SUBSCRIPTIONS_BTN}           accessibility_id=Subscriptions
${INBOX_BTN}                   accessibility_id=Inbox
${LIB_BTN}                     accessibility_id=Library

