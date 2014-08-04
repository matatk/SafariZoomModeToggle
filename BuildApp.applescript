set THING to "Safari Zoom Mode Toggle"
tell application "System Events"
	set pwd to path of (container of (path to me))
	tell application "AppleScript Editor"
		set plain_script to pwd & THING & ".applescript"
		set doc to open plain_script
		save doc as "application" in pwd & THING & ".app"
		quit
	end tell
end tell
