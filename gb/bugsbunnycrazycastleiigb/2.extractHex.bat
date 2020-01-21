@echo off
set T_FILENAME="TR_Bugs Bunny - Crazy Castle II (U) [!].gb"
set SCRIPTNAME="bugsbunnycrazycastleiigb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 840E:20,850E:20,8C0E:20,8D0E:20,940E:20,950E:20,9C0E:20,9D0E:20,A40E:20,A50E:20,AC0E:20,AD0E:20,B40E:20,B50E:20,1A43F:60,1A53F:60,DDCE:10,C3BE:10,CC0E:10
pause
