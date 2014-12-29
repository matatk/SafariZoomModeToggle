Safari Zoom Mode Toggle
=======================

An OS X "Service" (to which you can assign a shortcut key) to switch
between full-page and text-only zoom modes in Safari.

Installation
------------

1.  Download the [latest
    release](https://github.com/matatk/SafariZoomModeToggle/releases/latest)'s
    Zip file.
2.  Unzip the Zip file; you will have a folder containing an Application
    and a Service, which must be dragged to your personal Services
    folder in order for OS X to recognise them. A link to your personal
    Services folder is also provided in the Zip file, named
    "my-services-folder", so you can drag the Application and Service
    onto that link, and then remove the Zip file and unzipped folder.
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

