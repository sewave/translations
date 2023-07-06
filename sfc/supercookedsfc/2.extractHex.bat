@echo off
set T_FILENAME="TR_Supercooked! (J) (v1.2).sfc"
set SCRIPTNAME="supercookedsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3A464:220,60610:150,60850:80
pause
