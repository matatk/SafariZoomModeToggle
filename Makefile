NAME=Safari\ Zoom\ Mode\ Toggle

SCRIPT=$(NAME).applescript
APP=$(NAME).app
SERVICE=$(NAME).workflow

BINPATH=~/bin
SRVPATH=~/Library/Services

all: $(APP)

install: $(APP) uninstall
	mv $(APP) $(BINPATH)/
	cp -a $(SERVICE) $(SRVPATH)/
	@echo
	@echo "Remember to set a shortcut key in System Preferences > Keyboard."

uninstall:
	if [ -e $(BINPATH)/$(APP) ]; then rm -rf $(BINPATH)/$(APP); fi
	if [ -e $(SRVPATH)/$(SERVICE) ]; then rm -rf $(SRVPATH)/$(SERVICE); fi

$(APP): $(SCRIPT)
	osacompile -o $(APP) $(SCRIPT)

clean:
	if [ -e $(APP) ]; then rm -r $(APP); fi
