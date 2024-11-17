@echo off
title Discord Transfer Kurulum
echo Discord Transfer Tool Kurulum
echo =====================================
echo.

:: Python kurulu mu kontrol et
python --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Python bulunamadi. Python indiriliyor...
    curl -o python_installer.exe https://www.python.org/ftp/python/3.11.8/python-3.11.8-amd64.exe
    echo Python kuruluyor...
    python_installer.exe /quiet InstallAllUsers=1 PrependPath=1
    del python_installer.exe
) else (
    echo Python zaten kurulu.
)

:: Path'i yenile
refreshenv > nul 2>&1

:: Gerekli kütüphaneleri kur
echo.
echo Gerekli kutuphaneler yukleniyor...
pip install discord.py requests aiohttp pyinstaller
echo.
echo Kurulum tamamlandi!
echo.
pause