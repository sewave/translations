@echo off
set T_FILENAME="TR_Double Dragon III - The Sacred Stones (U) [!].nes"
set S_FILENAME="Double Dragon III - The Sacred Stones (U) [!].nes"
set SCRIPTNAME="doubledragoniiithesacredstonesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
