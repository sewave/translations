@echo off
set T_FILENAME="TR_Ghostbusters II (USA, Europe).gb"
set S_FILENAME="Ghostbusters II (USA, Europe).gb"
set SCRIPTNAME="ghostbustersiigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
