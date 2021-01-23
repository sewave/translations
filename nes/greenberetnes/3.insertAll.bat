@echo off
set T_FILENAME="TR_Green Beret (FDS Conversion, Whirlwind Manu)(Unl)[U][!].nes"
set S_FILENAME="Green Beret (FDS Conversion, Whirlwind Manu)(Unl)[U][!].nes"
set SCRIPTNAME="greenberetnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
