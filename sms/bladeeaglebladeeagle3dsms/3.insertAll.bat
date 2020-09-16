@echo off
set T_FILENAME="TR_Blade Eagle ~ Blade Eagle 3-D (World).sms"
set S_FILENAME="Blade Eagle ~ Blade Eagle 3-D (World).sms"
set SCRIPTNAME="bladeeaglebladeeagle3dsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
