@echo off
set T_FILENAME="TR_Ishido - The Way of the Stones (U) [c][!].bin"
set S_FILENAME="Ishido - The Way of the Stones (U) [c][!].bin"
set SCRIPTNAME="ishidothewayofthestonessmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
