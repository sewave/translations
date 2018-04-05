@echo off
set T_FILENAME="TR_Escape From Mars Starring Taz (U) [!].bin"
set SCRIPTNAME="tazmarssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
