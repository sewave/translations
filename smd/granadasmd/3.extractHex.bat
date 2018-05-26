@echo off
set T_FILENAME="TR_Granada (JU) (REV01) [!].gen"
set SCRIPTNAME="granadasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 23DAA:A0,240CA:60
pause
