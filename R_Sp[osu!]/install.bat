@echo off & setlocal enabledelayedexpansion
:Installed Packs Check
set "file=packinformation.ini"
set n=0
set m=0
for /f "usebackq tokens=1* delims=: " %%a in ("%file%") do set /a n+=1  
for /f "usebackq tokens=1* delims=: " %%a in ("%file%") do (
set /a m+=1
if  !m! LSS !n! set "%%a=%%b"
)
echo �㵱ǰ��װ�İ��ǣ� %PackName%
echo ��ɫ��%Colors%
echo ֡�ʣ�%Frame% Fps
echo ���ԣ�%Language%
echo �汾��%Release%
echo ����״̬��%Status%
pause