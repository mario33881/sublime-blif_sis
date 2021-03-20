help:
	@echo "This file makes the .sublime-package file."
	@echo "Please, specify a parameter for this Makefile depending on your current OS:"
	@echo "1. execute 'make win_package' to use 7zip on Windows to make the package"
	@echo "2. execute 'make blif_sis.sublime-package' to use the zip command on Linux to make the package"

win_package:
	7z -tzip -x!assets -x!Makefile -x!.git -x!tests/__pycache__ a blif_sis.sublime-package .

blif_sis.sublime-package:
	zip -x Makefile -x assets -x .git -x tests/__pycache__ -r blif_sis.sublime-package .