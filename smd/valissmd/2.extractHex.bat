@echo off
set T_FILENAME="TR_Valis (USA).md"
set SCRIPTNAME="valissmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 90D88:100,91388:180,91B88:180
pause
