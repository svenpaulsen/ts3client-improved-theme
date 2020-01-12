<!--
TeamSpeak 3 Client Infoframe Template
Copyright (c) Sven 'ScP' Paulsen

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins!

Options (remove the "#" to enable):
%%AVATAR_MAX_WIDTH%%128
%%AVATAR_MAX_HEIGHT%%128
#%%AVATAR_IMAGE_DONT_APPEND%%1
#%%STATUS_ICONS_DONT_APPEND%%1
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3
#%%CLIENT_SERVER_SHOW_MAX_BADGES%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_COUNTRY_IMAGE_SCALED
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_MYTEAMSPEAK_ID
CLIENT_TALK_POWER
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE ([Alpha|Beta|Stable])
CLIENT_VERSION_LONG
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AWAY
CLIENT_FLAG_BADGES
CLIENT_FLAG_INPUT_MUTED
CLIENT_FLAG_INPUT_HARDWARE_DISABLED
CLIENT_FLAG_OUTPUT_MUTED
CLIENT_FLAG_OUTPUT_HARDWARE_DISABLED
CLIENT_FLAG_LOCAL_MUTED
CLIENT_FLAG_RECORDING
CLIENT_FLAG_AVATAR
CLIENT_PATH_AVATAR
CLIENT_IGNORE_AVATAR
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_BADGE_NAME
CLIENT_BADGE_DESCRIPTION
CLIENT_BADGE_ICON_SMALL
CLIENT_BADGE_ICON_LARGE
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
CLIENT_SERVER_SHOW_MAX_BADGES
AVATAR_IMAGE_DONT_APPEND
STATUS_ICONS_DONT_APPEND
PLUGIN_INFO_DATA
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
-->

<!-- begin dummy container including tooltip (single line html table) -->

<div class="InfoFrame" title="<table><tr><td><b><nobr>Client ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_ID%%</nobr></td></tr><tr><td><b><nobr>Unique ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_UNIQUE_ID%%</nobr></td></tr><tr><td><b><nobr>myTeamSpeak ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_MYTEAMSPEAK_ID%%</nobr></td></tr><tr><td><b><nobr>Database ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_DATABASE_ID%%</nobr></td></tr><tr><td colspan=2><hr /></td></tr><tr><td><b><nobr>%%TR_CLIENT_CREATED%%:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_CREATED%%</nobr></td></tr><tr><td><b><nobr>%%TR_CLIENT_LASTCONNECTED%%:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_LASTCONNECTED%%</nobr></td></tr><tr><td><b><nobr>%%TR_CLIENT_TOTALCONNECTIONS%%:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_TOTALCONNECTIONS%%</nobr></td></tr><tr><td colspan=2><hr /></td></tr><tr><td><b><nobr>TeamSpeak Client %%TR_CLIENT_VERSION%%:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_VERSION%% %%CLIENT_VERSION_STATE%%</nobr></td></tr></table>">

  <!-- begin title container -->

  <div class="InfoFrame_Title" dir="LTR">
    %%?CLIENT_COUNTRY_IMAGE_SCALED%%
    <a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">
    &nbsp;%%CLIENT_NAME%%&nbsp;</a>
    <span class="InfoFrame_CustomNick">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>
  </div>

  <hr />

  <!-- begin basic info table -->

  <table class="InfoFrame_Table">
    <tr>
      <td class="Bottom Label">%%TR_CLIENT_VERSION%%:</td>
      <td class="Bottom">%%CLIENT_VERSION_SHORT%% %%CLIENT_PLATFORM%% <img src="styles:/improved/media/platforms/%%CLIENT_PLATFORM%%.png" alt="" /></td>
    </tr>
    <tr><td class="Label">%%TR_CLIENT_CONNECTED_SINCE%%:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
    <tr><td class="Label">%%TR_CLIENT_DESCRIPTION%%:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
    <tr><td class="Label">%%TR_CLIENT_VOLUME_MODIFIER%%:</td><td class="Important">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
  </table>

  <!-- begin plugin info table -->

  <br /><table class="InfoFrame_Table">%%?PLUGIN_INFO_DATA%%</table>

  <!-- begin client badges table -->
  
  %%??CLIENT_FLAG_BADGES%%<table class="InfoFrame_Table">
  %%??CLIENT_FLAG_BADGES%%  <tr>
  %%??CLIENT_FLAG_BADGES%%    <td colspan="%%CLIENT_FLAG_BADGES%%" class="Label Space-Top"><img src="iconpath:MYTS_ACCOUNT" height="14" width="14" alt=""> %%TR_CLIENT_BADGE_SHOWCASE%%:</td>
  %%??CLIENT_FLAG_BADGES%%  </tr>
  %%??CLIENT_FLAG_BADGES%%  <tr>
  %%??CLIENT_FLAG_BADGES%%    <td class="Badge" title="<b>%%CLIENT_BADGE_NAME%%</b><br />%%CLIENT_BADGE_DESCRIPTION%%">%%CLIENT_BADGE_ICON_LARGE%%</td>
  %%??CLIENT_FLAG_BADGES%%  </tr>
  %%??CLIENT_FLAG_BADGES%%</table>

  <!-- begin permission info table -->

  <table class="InfoFrame_Table Space-Bot">
    <tr><td class="Label Space-Top"><img src="iconpath:PERMISSIONS_SERVER_GROUPS" height="14" width="14" alt=""> %%TR_CLIENT_SERVER_GROUPS%%:</td></tr>
    <tr><td class="List">
      <div>%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</div>
    </td></tr>
    <tr><td class="Label Space-Top"><img src="iconpath:PERMISSIONS_CHANNEL_GROUPS" height="14" width="14" alt=""> %%TR_CLIENT_CHANNEL_GROUP%%:</td></tr>
    <tr><td class="List">
      <div>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</div>
    </td></tr>
    <tr><td class="Important"><br />*** %%?TR_CLIENT_TALK_REQUEST_TIME%%</td></tr>
    <tr><td class="Important">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
  </table>

</div>
