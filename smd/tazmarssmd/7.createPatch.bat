@echo off
set T_FILENAME="TR_Escape From Mars Starring Taz (U) [!].bin"
set S_FILENAME="Escape From Mars Starring Taz (U) [!].bin"
set SCRIPTNAME="tazmarssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
