@echo off
set T_FILENAME="TR_Double Dragon 2 - The Revenge (J) [!].gen"
set S_FILENAME="Double Dragon 2 - The Revenge (J) [!].gen"
set SCRIPTNAME="doubledragon2therevengesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
