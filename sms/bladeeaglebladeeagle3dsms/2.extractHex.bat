@echo off
set T_FILENAME="TR_Blade Eagle ~ Blade Eagle 3-D (World).sms"
set SCRIPTNAME="bladeeaglebladeeagle3dsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
