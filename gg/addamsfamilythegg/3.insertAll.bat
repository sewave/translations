@echo off
set T_FILENAME="TR_Addams Family, The (World).gg"
set S_FILENAME="Addams Family, The (World).gg"
set SCRIPTNAME="addamsfamilythegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
