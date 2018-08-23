@echo off
set T_FILENAME="TR_Double Dragon III - The Sacred Stones (U) [!].nes"
set SCRIPTNAME="doubledragoniiithesacredstonesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 00030910:300,30210:100,3B880:10,3F0D0:10
pause
