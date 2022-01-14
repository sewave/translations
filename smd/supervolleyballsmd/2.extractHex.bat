@echo off
set T_FILENAME="TR_Super Volley Ball (USA).md"
set SCRIPTNAME="supervolleyballsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3F800:420,2E040:480,2EA00:220,23C80:20,28600:100,2C480:800,25A00:300,25E00:200,29D40:600
pause
