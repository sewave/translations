@echo off
set T_FILENAME="TR_Thunder Spirits (USA).sfc"
set SCRIPTNAME="thunderspiritssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex C68E0:280,CE800:400,4C300:100,4E000:200,4EC00:60,4C9C0:20,4CB40:C0
pause
