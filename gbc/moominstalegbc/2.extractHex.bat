@echo off
set T_FILENAME="TR_Moomin's Tale (Europe) (En,Fr,De).gbc"
set SCRIPTNAME="moominstalegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AAEF:340,E9EE0:90,F8444:40,F8524:60,F8624:30,57B4B:10,57B8B:10,5D65B:10,5D69B:10
pause
