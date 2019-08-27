@echo off
set T_FILENAME="TR_Donald in Maui Mallard (E) [!].bin"
set SCRIPTNAME="mauimallardsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
