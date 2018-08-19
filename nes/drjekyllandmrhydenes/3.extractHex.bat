@echo off
set T_FILENAME="TR_Dr. Jekyll and Mr. Hyde (U) [!].nes"
set SCRIPTNAME="drjekyllandmrhydenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9F30:A0,BF30:A0,21F30:A0,23F30:A0,24F30:A0,25F30:A0,27810:20,17810:20,16810:C0,26810:C0
pause
