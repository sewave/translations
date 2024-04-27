@echo off
set T_FILENAME="TR_The Ice Temple.tzx"
set SCRIPTNAME="theicetempletzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8656:10,88EE:30
pause
