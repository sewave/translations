@echo off
set T_FILENAME="TR_Mortal Kombat (World) (v1.1).md"
set SCRIPTNAME="mortalkombatsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1A0A40:20,1A1540:40
pause
