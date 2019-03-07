@echo off
set T_FILENAME="TR_New Ghostbusters II (E) [!].nes"
set SCRIPTNAME="newghostbustersiines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 255E0:20,34890:80,34990:80,34A90:80,34B90:80,25690:300
pause
