@echo off
set T_FILENAME="TR_Tiny Toon Adventures - Acme All-Stars (U) [!].gen"
set SCRIPTNAME="tinytoonadventuresacmeallstarsssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
