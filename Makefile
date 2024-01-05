all:
	@echo
	@echo This defines the primitive widgets
	@echo
	@echo This is how the gui communicates with the toolkit plugin
	@echo The widgets are things like Windows, Buttons, Labels, etc
	@echo

redomod:
	rm -f go.*
	go mod init
	go mod tidy

# sync repo to the github backup
# git remote add github git@github.com:wit-go/gui.git
github:
	git push origin master
	git push origin devel
	git push origin --tags
	git push github master
	git push github devel
	git push github --tags
	@echo
	@echo check https://git.wit.org/gui/widget
	@echo check https://github.com/wit-go/widget
	@echo
