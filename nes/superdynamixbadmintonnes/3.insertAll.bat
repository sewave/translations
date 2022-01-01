@echo off
set T_FILENAME="TR_Super Dyna'mix Badminton (J) [b1][o2].nes"
set S_FILENAME="Super Dyna'mix Badminton (J) [b1][o2].nes"
set SCRIPTNAME="superdynamixbadmintonnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
