on assistive_access_check()
	tell application "System Events"
		if not (UI elements enabled) then
			return false
		else
			return true
		end if
	end tell
end assistive_access_check

on enable_assistive_access()
	-- Thanks to https://gist.github.com/iloveitaly/2ff08138091afd69cf2b
	set scriptRunner to name of current application
	display alert "GUI Scripting is not enabled for " & scriptRunner & "." message "Open System Preferences, unlock the Security & Privacy preference, select " & scriptRunner & " in the Privacy Pane's Accessibility list, and then run this script again." buttons {"Open System Preferences", "Cancel"} default button "Cancel"
	if button returned of result is "Open System Preferences" then
		tell application "System Preferences"
			tell pane id "com.apple.preference.security" to reveal anchor "Privacy_Accessibility"
			activate
		end tell
	end if
end enable_assistive_access

on toggle_zoom_mode()
	tell application "System Events"
		tell process "Safari"
			tell menu bar 1
				tell menu "View"
					set zoom_item to menu item "Zoom Text Only"
					set zoom_text to (value of attribute "AXMenuItemMarkChar" of zoom_item is not missing value)
					click zoom_item
					return not zoom_text
				end tell
			end tell
		end tell
	end tell
end toggle_zoom_mode

on main()
	if application "Safari" is running then
		if assistive_access_check() then
			set text_zoom to toggle_zoom_mode()
			tell application "Safari" to activate
			if text_zoom then
				say "Text-only zoom"
			else
				say "Full-page zoom"
			end if
		else
			enable_assistive_access()
		end if
	end if
end main

main()
