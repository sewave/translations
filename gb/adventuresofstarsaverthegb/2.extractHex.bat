@echo off
set T_FILENAME="TR_Adventures of Star Saver, The (USA, Europe).gb"
set SCRIPTNAME="adventuresofstarsaverthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10810:30
pause
