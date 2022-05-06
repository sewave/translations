@echo off
set T_FILENAME="TR_Mamono Hunter Youko - Dai 7 no Keishou (Japan).md"
set SCRIPTNAME="mamonohunteryoukodai7nokeishousmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
