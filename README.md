Safari Zoom Mode Toggle
========================

An OS X "Service" (to which you can assign a shortcut key) to switch between "Full Page" and "Text Only" zoom modes in Safari.

Installation
-------------

1. Clone the code.
2. Run `make`; this will compile/build the helper app and put it and the Service in `~/Library/Services/` for you.
3. Visit System Preferences > Keyboard > Shortcuts > Services and assign a shortcut key combination to the zoom.

Usage
------

Press the shortcut key combination. The Mac will verbally say which zoom mode is now active.

**Note:** the first time you use this (or a new version), it needs to be granted access to GUI scripting (so that it can access and activate Safari's menus and menu items); instructions will be given on how to do this.
