@echo off
set T_FILENAME="TR_Gunpowder, Treason & Plot.tzx"
set SCRIPTNAME="gunpowdertreasonplottzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
