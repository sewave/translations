@echo off
set T_FILENAME="TR_LOBO (Prototype) (SegaSaturno.com) [!].bin"
set SCRIPTNAME="lobosmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
