@echo off
set T_FILENAME="TR_Attack of the Killer Tomatoes (USA).nes"
set S_FILENAME="Attack of the Killer Tomatoes (USA).nes"
set SCRIPTNAME="attackofthekillertomatoesnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
