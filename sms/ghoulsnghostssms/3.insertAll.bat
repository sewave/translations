@echo off
set T_FILENAME="TR_Ghouls'n Ghosts (USA, Europe).sms"
set S_FILENAME="Ghouls'n Ghosts (USA, Europe).sms"
set SCRIPTNAME="ghoulsnghostssms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
