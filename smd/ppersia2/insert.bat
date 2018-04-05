@echo off 
set T_FILENAME="TR_Prince of Persia 2 - The Shadow and The Flame (Beta).bin"
set S_FILENAME="Prince of Persia 2 - The Shadow and The Flame (Beta).bin"
set SCRIPTNAME="ppersia2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -fcm %T_FILENAME% 
pause 
