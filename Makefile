NAME=Safari\ Zoom\ Mode\ Toggle

SCRIPT=$(NAME).applescript
APP=$(NAME).app

all: $(APP)

$(APP): $(SCRIPT)
	osacompile -o $(APP) $(SCRIPT)
