@echo off
set T_FILENAME="TR_Parasol Stars - Rainbow Islands II (Europe).gb"
set SCRIPTNAME="parasolstarsrainbowislandsiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1297A:1E0,15B26:80,13A6C:80,13AEC:C0
pause
