NAME=Safari\ Zoom\ Mode\ Toggle
SCRIPT=$(NAME).applescript
SERVICE=$(NAME).workflow
APP=$(NAME).app
SRVPATH=~/Library/Services

all: install

$(APP): $(SCRIPT)
	osascript BuildApp.applescript

install: $(APP) uninstall
	cp -a $(SERVICE) $(SRVPATH)/
	@echo
	@echo "Remember to set a shortcut key in System Preferences > Keyboard."

uninstall:
	if [ -e $(SRVPATH)/$(SERVICE) ]; then rm -r $(SRVPATH)/$(SERVICE); fi

clean:
	if [ -e $(APP) ]; then rm -r $(APP); fi
