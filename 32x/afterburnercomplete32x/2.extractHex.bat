@echo off
set T_FILENAME="TR_After Burner Complete (JU) (32X) [!].32x"
set SCRIPTNAME="afterburnercomplete32x"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20830:A0,211F0:80,218B0:100,21BD0:80,1F8F0:80,1FC50:C0,1FF30:20,203D0:400
pause
