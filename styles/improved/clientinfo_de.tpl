<!--
TeamSpeak 3 Client Infoframe Template (DE)
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
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_ID
CLIENT_ICON
CLIENT_UNIQUE_ID
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE
CLIENT_DESCRIPTION
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

<!-- begin dummy container including tooltip (single line html table) -->

<div class="InfoFrame" title="<table><tr><td><b><nobr>Client ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_ID%%</nobr></td></tr><tr><td><b><nobr>Eindeutige ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_UNIQUE_ID%%</nobr></td></tr><tr><td><b><nobr>Datenbank ID:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_DATABASE_ID%%</nobr></td></tr><tr><td colspan=2><hr /></td></tr><tr><td><b><nobr>Zuerst Verbunden:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_CREATED%%</nobr></td></tr><tr><td><b><nobr>Zuletzt Verbunden:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_LASTCONNECTED%%</nobr></td></tr><tr><td><b><nobr>Verbindungen Gesamt:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_TOTALCONNECTIONS%%</nobr></td></tr><tr><td colspan=2><hr /></td></tr><tr><td><b><nobr>Software Version:&nbsp;</nobr></b></td><td><nobr>%%CLIENT_VERSION%% %%CLIENT_VERSION_STATE%%</nobr></td></tr></table>">

  <!-- begin title container -->

  <div class="InfoFrame_Title" dir="LTR">
    <img src="%%?CLIENT_COUNTRY_IMAGE%%" alt="" title="%%CLIENT_COUNTRY_TOOLTIP%%" />
    &nbsp;
    <a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">%%CLIENT_NAME%%</a>
    &nbsp;
    <span class="InfoFrame_CustomNick" title="Benutzerdefinierter Nickname">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>
  </div>

  <hr />

  <!-- begin basic info table -->

  <table class="InfoFrame_Table">
    <tr>
      <td class="Bottom Label">Version:</td>
      <td class="Bottom">%%CLIENT_VERSION_SHORT%% auf %%CLIENT_PLATFORM%% <img src="styles:/default_custom/media/platforms/%%CLIENT_PLATFORM%%.png" alt="" /></td>
    </tr>
    <tr><td class="Label">Online seit:</td><td>%%CLIENT_CONNECTED_SINCE%%</td></tr>
    <tr><td class="Label">Beschreibung:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
    <tr><td class="Label">Lautst&auml;rke:</td><td class="Important">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
  </table>

  <!-- begin plugin info table -->

  <br /><table class="InfoFrame_Table">%%?PLUGIN_INFO_DATA%%</table>

  <!-- begin permission info table -->

  <table class="InfoFrame_Table Space-Bot">
    <tr><td class="Label Space-Top"><img src="iconpath:PERMISSIONS_SERVER_GROUPS" height="12" width="12" alt=""> Server Gruppen:</td></tr>
    <tr><td class="List">
      <div>%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</div>
    </td></tr>
    <tr><td class="Label Space-Top"><img src="iconpath:PERMISSIONS_CHANNEL_GROUPS" height="12" width="12" alt=""> Channel Gruppe:</td></tr>
    <tr><td class="List">
      <div>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</div>
    </td></tr>
    <tr><td class="Important"><br />*** Client hat um <b>%%?CLIENT_TALK_REQUEST_TIME%%</b> Talk Power angefordert.</td></tr>
    <tr><td class="Important">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
  </table>

</div>
