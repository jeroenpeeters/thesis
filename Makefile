all:
	cd thesis && ./dockerMake html && ./dockerMake pdf

html:
	cd thesis && ./dockerMake html

pdf:
	cd thesis && ./dockerMake pdf
