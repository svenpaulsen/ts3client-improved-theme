<!--
TeamSpeak 3 Server Infoframe Template (DE)
Copyright (c) Sven 'ScP' Paulsen
 
The replaceable variables are embedded in "%%" like %%SERVER_NAME%%. At this time you can also use 
%%?SERVER_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Replacable variables for server:
SERVER_NAME
SERVER_VERSION
SERVER_PLATFORM
SERVER_CLIENTS_ONLINE
SERVER_QUERYCLIENTS_ONLINE
SERVER_CHANNELS_ONLINE
SERVER_UPTIME
SERVER_CLIENT_CONNECTIONS
SERVER_QUERY_CLIENT_CONNECTIONS
SERVER_ADDRESS
SERVER_PORT
SERVER_ICON
SERVER_LICENSE
PLUGIN_INFO_DATA
SERVER_MAXCLIENTS
SERVER_NO_RESERVED_SLOTS
SERVER_RESERVED_SLOTS
SERVER_REFRESH_INACTIVE
SERVER_REFRESH_ACTIVE
-->

<!-- begin dummy container including tooltip (single line html table) -->

<div class="InfoFrame" title="<table><tr><td><b><nobr>Client Verbindungen Aktuell:&nbsp;</nobr></b></td><td><nobr>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</nobr></td></tr><tr><td><b><nobr>Client Verbindungen Gesamt:&nbsp;</nobr></b></td><td><nobr>%%SERVER_CLIENT_CONNECTIONS%%</nobr></td></tr><tr><td><b><nobr>ServerQuery Verbindungen Aktuell:&nbsp;</nobr></b></td><td><nobr>%%SERVER_QUERYCLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</nobr></td></tr><tr><td><b><nobr>ServerQuery Verbindungen Gesamt:&nbsp;</nobr></b></td><td><nobr>%%SERVER_QUERY_CLIENT_CONNECTIONS%%</nobr></td></tr><tr><td colspan=2><hr /></td></tr><tr><td><b><nobr>Software Version:&nbsp;</nobr></b></td><td><nobr>%%SERVER_VERSION%%</nobr></td></tr></table>">

  <!-- begin title container -->

  <div class="InfoFrame_Title" dir="LTR">
    <img src="%%?SERVER_ICON%%" alt="
    <img src='iconpath:SERVER_GREEN' alt='' width='16' height='16' />
    %%?SERVER_ICON%%" title="Server Icon" width="16" height="16" />
    &nbsp;
    <a href="channelid://0" class="TextMessage_ServerLink">%%SERVER_NAME%%</a>
  </div>

  <hr />

  <!-- begin basic info table -->

  <table class="InfoFrame_Table">
    <tr>
      <td class="Bottom Label">Version:</td>
      <td class="Bottom">%%SERVER_VERSION_SHORT%% auf %%SERVER_PLATFORM%% <img src="styles:/default_custom/media/platforms/%%SERVER_PLATFORM%%.png" alt="" /></td>
    </tr>
    <tr>
      <td class="Label">Lizenz:</td>
      <td>%%SERVER_LICENSE%%</td>
    </tr>
    <tr>
      <td class="Label">Adresse:</td>
      <td>
      %%SERVER_ADDRESS%%
      :%%?SERVER_PORT%%
    </td>
    </tr>
    <tr>
      <td class="Label">Verf&uuml;gbar:</td>
      <td>%%SERVER_UPTIME%%</td>
    </tr>
  </table>

  <br />

  <!-- begin connection info table -->

  <table class="InfoFrame_Table">
    <tr>
      <td class="Label">Aktuelle Clients:</td>
      <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
      <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="Important">-%%?SERVER_RESERVED_SLOTS%% reserviert</span>)</td>
    </tr>
    <tr>
      <td class="Label">Aktuelle Channels:</td>
      <td>%%SERVER_CHANNELS_ONLINE%%</td>
    </tr>
    %%?PLUGIN_INFO_DATA%%
  </table>

  <br />

  <!-- begin refresh table -->

  <table class="InfoFrame_Table">
    <tr><td>
      <img src="iconpath:REFRESH" height="12" width="12" alt="">
      &nbsp;
      <a class="Inactive" href="%%?SERVER_REFRESH_INACTIVE%%">Aktualisieren</a>
      <a class="Active" href="%%?SERVER_REFRESH_ACTIVE%%">Aktualisieren</a>
    </td></tr>
  </table>

</div>
