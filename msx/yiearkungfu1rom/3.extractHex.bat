@echo off
set T_FILENAME="TR_Yie Ar Kung-Fu 1 (1985) (Konami) (J).rom"
set SCRIPTNAME="yiearkungfu1rom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
