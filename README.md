Apple Keyboard for Windows
==========================

_Apple Keyboard for Windows_ is a AutoHotKey script that makes a Apple Keyboard useful on your Windows computer. Regardless if you are running the Windows installation in a Virtual Machine or if you are using an Apple keyboard connected directly to your Windows PC, _AKfoW_ is for you. 

_AKfoW_ brings the following commands and shortcuts to your Windows computer, just like you're used to from OS X:

- Cmd + C/V/X - Copy, Paste and Cut
- Cmd + Left/right arrow - Home / End
- Cmd + Z - Undo
- Cmd + T - Open new tab
- Cmd + W - Close current window/tab
- Cmd + Q - Quits the current application (equivivalent to Alt + F4)
- Cmd + F7/F8/F9 - Media keys (Previous track, Play/pause, Next track)
- Cmd + F10/F11/F12 - Volume control (Mute, Lower volume, Raise volume)
- F13 - Take screenshot

There is also a _HyperDock special key-kombo_ (both to mimic the same behavior as _HyperDock_ on Mac but also to make up for the Cmd + Left/Right being mapped as Home/End instead of it's default behavior).
- Cmd & Shift & Alt + Arrow key - Snaps current window to any of the four edges of the screen (works as the default Win + Arrow key feature in Windows)

This script also fixes the media keys (previous track, play/pause, next track and volume buttons). Use the Cmd key + any of the F7-F12 keys to control media playback. 

## Special note if your are running AppleWirelessKeyboard
There is a neat tool that will fix some of the Apple keyboard specific features that is called _[Apple Wireless Keyboard (AKW)](http://uxsoft.cz/projects/apple-wireless-keyboard/)_ by UX Soft. And despite it's name it actually works on the wired USB keyboard as well (however with limited set of features).

_AKfoW_ works well in combination with AKW. Some features will now get duplicate shortcuts (media keys for example). If you disable "direct F-key" in AKW the media keys will be enabled (_Special/Media Keys mode_). If you have enabled "direct F-key" the special/media keys will be disabled and the F1-F12 will instead work as on any typical Windows keyboard (_Function Keys mode_). In _Function Keys mode_, you can still access the media keys through the Cmd + F7-12 keys. Best of both worlds.

