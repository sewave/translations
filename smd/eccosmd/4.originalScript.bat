@echo off
set T_FILENAME="ECCO The Dolphin (UE) [!].gen"
set SCRIPTNAME="eccosmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
