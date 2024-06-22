@echo off
set T_FILENAME="TR_Space Rider Jet Pack Co..tzx"
set SCRIPTNAME="spaceriderjetpackcotzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2C11:20,8161:20,9CB1:20,9EC1:20,8059:10
pause
