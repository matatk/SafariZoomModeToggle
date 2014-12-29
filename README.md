Safari Zoom Mode Toggle
=======================

An OS X "Service" (to which you can assign a shortcut key) to switch
between full-page and text-only zoom modes in Safari.

Installation
------------

1.  Download the [latest release](fixme).
2.  ***FIXME***
3.  Visit System Preferences \> Keyboard \> Shortcuts \> Services and
    assign a shortcut key combination to the "Safari Zoom Mode Toggle"
    service (under "General" at the bottom of the list).

Usage
-----

Press the shortcut key combination. The Mac will verbally say which zoom
mode is now active.

**Note:** the first time you use this (or a new version), it needs to be
granted access to GUI scripting (so that it can access and activate
Safari's menus and menu items); instructions on how to do this are given
in a pop-up message.

Compiling
---------

0.  Ensure you hae Apple's Command Line Developer tools installed (for
    make).
1.  Clone the code.
2.  Run `make`; this will compile/build the helper app and put it and
    the Service in `~/Library/Services/` for you.
3.  Follow step 3 as above.

