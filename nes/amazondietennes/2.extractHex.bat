@echo off
set T_FILENAME="TR_amazon_diet_EN.nes"
set SCRIPTNAME="amazondietennes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5F240:50,5F5C0:50,5F7C0:40,5FA40:50,5FDC0:50,5FFC0:40,5F850:C0,5F950:C0,5E110:400
pause
