Write-Host ""
Write-Host "  Building ShopSphere..." -ForegroundColor Cyan
mvn -q package -DskipTests
if ($LASTEXITCODE -ne 0) {
    Write-Host "  Build failed. Run 'mvn package' for details." -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}
Write-Host "  Starting ShopSphere Console..." -ForegroundColor Green
Write-Host ""
java -jar shopsphere.jar console
