@echo off
set T_FILENAME="TR_Probotector II - Return of the Evil Forces (Europe).nes"
set S_FILENAME="Probotector II - Return of the Evil Forces (Europe).nes"
set SCRIPTNAME="probotectoriireturnoftheevilforcesnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
