Safari Zoom Mode Toggle
=======================

**No longer under development:** In Safari 10, the "Zoom Text Only" menu option has gone, but it is possible to zoom the text size only (as opposed to the whole page) using the keyboard shortcut <kbd>Command</kbd>+<kbd>Option</kbd>+<kbd>+</kbd>/<kbd>-</kbd>.

- - -

An OS X "Service" (to which you can assign a shortcut key) to switch
between full-page and text-only zoom modes in Safari.

This has been tested on Mavericks and Yosemite.

Installation
------------

1.  Download the Zip file of the latest release:
    https://github.com/matatk/SafariZoomModeToggle/releases/latest
2.  Unzip the Zip file and move the application and the service to your
    \~/Library/Services/ folder.
3.  Visit System Preferences \> Keyboard \> Shortcuts \> Services and
    assign a shortcut key combination to the "Safari Zoom Mode Toggle"
    service (under "General" at the bottom of the list).

Usage
-----

Press the shortcut key combination. Safari's Zoom Mode (text-only or full-page) will be toggled and the new mode announced by speech.

**Note:** the first time you use this (or a new version), it needs to be
granted access to GUI scripting (so that it can access and activate
System Preference's menus and menu items); instructions on how to do
this are given in a pop-up message. **You may need to run it using
Finder from \~/Library/Services/ rather than via the keyboard shortcut
in order for the pop-up to appear.**

Compiling
---------

Normal AppleScripts are kept in binary files; this seemed incongruous
with the nature of open development, so the script is being developed in
plain text, in exchange for a small 'compilation' process being
required...

0.  Ensure you have Apple's Command Line Developer tools installed (for
    make).
1.  Clone the code.
2.  Run `make`; this will compile/build the helper app and put it and
    the Service in `~/Library/Services/` for you. It will also build a
    Zip file containing the app, service and README for distribution.
3.  Follow step 3 as above.

