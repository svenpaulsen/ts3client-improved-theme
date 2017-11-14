# TeamSpeak 3 Client Improved Default Theme

This is an overhauled and improved version of the TeamSpeak 3 Client default theme.

## Features and Enhancements

This theme contains the following changes:

- Enabled alternating row colors for treeviews and tables
- Enabled animations when expanding and collasping branches in treeviews (macOS and Windows)
- Enabled tear-off function for menus so you can detach menus into separate windows (Linux and Windows)
- Removed option to collapse server branch in treeview
- Reverted tabs back to system default (macOS)
- Tweaked option dialog headlines
- Tweaked chat and infoframe font size
- Tweaked chat and infoframe background colors to use QPalette::Base to resolve issues with dark system themes
- Redesigned infoframe templates for servers, channels and clients
- Readded client UID and other information (client database ID, etc) via tooltips in infoframe template
- Added customizable chat stylesheet using a slightly better classic color set
- Added server and channel icons to infoframe templates
- Added tiny icons to indicate server and client platform
- Added tiny icons to indicate whether the channel codec is encrypted
- Added unified title and toolbar (macOS)
- Clicking the name of a server, channel or client in infoframe will now open the appropriate context menu

## Requirements

To use this theme you'll need version **3.1.5**, or any newer client release.

## How to Install

When using the **.ts3_style** package, the TeamSpeak 3 Client should automatically extract all files to the corresponding directories. For a manual installation, copy the **.qss** files and **improved** folder into one of the following directories:

### Windows
`%%APPDATA%%\TS3Client\styles`

### Linux
`~/.ts3client/styles`

### macOS
`~/Library/Application Support/TeamSpeak 3/styles`

Now you should be able to select the theme called **improved** under *Tools* -> *Options* -> *Design* -> *Theme*.

Please note that you might have to restart your TeamSpeak 3 Client to apply all the enhancements of this theme.
