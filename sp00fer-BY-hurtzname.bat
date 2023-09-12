@echo off
title SPOOFER-BY-hurtzname
cls
:menu
cls
color 1

date /t

echo Computador: %computername%        Usuario: %username%
                   
echo            Spoofer by hurtzname
echo  ==================================
echo * 1. Spoofar                       * 
echo * 2. Remover todos bans  
echo * 3. Limpar Ip  
echo * 4. Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4s

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao2
cls
xcopy /T /C C:\Users\emers\Documents\*.* C:\Users\emers\Desktop
echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

:opcao3
cls
xcopy /T /C C:\Users\emers\Documents\*.* C:\Users\emers\Desktop
echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

:opcao4
@echo off
echo spoofing...
ipconfig /release
ipconfig /flushdns
ipconfig /renew
ping localhost -n 3 >nul
cls
echo ==================================
echo *     Escaneamento de disco       *
echo ==================================
chkdsk c:
pause
goto menu

:opcao3
cls
exit