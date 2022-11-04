@echo off
set T_FILENAME="LOBO (Prototype) (SegaSaturno.com) [!].bin"
set SCRIPTNAME="lobosmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
