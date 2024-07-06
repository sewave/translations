@echo off
set T_FILENAME="TR_Magic Johnson's Fast Break (USA).nes"
set SCRIPTNAME="magicjohnsonsfastbreaknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14260:280,10420:20,10480:20,15420:20,15480:20,1F420:20,1F480:20,1F8C0:20,1F920:20,24420:20,24480:20,2C420:20,2C480:20
pause
