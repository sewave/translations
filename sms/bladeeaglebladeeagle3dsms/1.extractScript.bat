@echo off
set T_FILENAME="Blade Eagle ~ Blade Eagle 3-D (World).sms"
set SCRIPTNAME="bladeeaglebladeeagle3dsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
