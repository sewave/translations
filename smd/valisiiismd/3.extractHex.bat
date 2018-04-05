@echo off
set T_FILENAME="TR_Valis III (U) [!].bin"
set SCRIPTNAME="valisiiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2337A:A0,23E9A:60,2237A:A0,22E9A:60
pause
