# Undo Level Edits and Play Data
$gameDirectory = "$env:APPDATA\.minecraft";
Set-Location $gameDirectory\saves\CopeCraft
Remove-Item $gameDirectory\saves\CopeCraft\advancements\76ca1596-ad31-456d-93eb-55e42ab91255.json -ErrorAction SilentlyContinue
git restore $gameDirectory\saves\CopeCraft\data\raids.dat
Remove-Item $gameDirectory\saves\CopeCraft\data\scoreboard.dat -ErrorAction SilentlyContinue
git restore $gameDirectory\saves\CopeCraft\DIM-1\data\raids.dat
git restore $gameDirectory\saves\CopeCraft\DIM1\data\raids_end.dat
git restore $gameDirectory\saves\CopeCraft\entities\r.-1.-1.mca
git restore $gameDirectory\saves\CopeCraft\entities\r.-1.0.mca
git restore $gameDirectory\saves\CopeCraft\entities\r.0.0.mca
git restore $gameDirectory\saves\CopeCraft\level.dat
Remove-Item $gameDirectory\saves\CopeCraft\level.dat_old -ErrorAction SilentlyContinue
Remove-Item $gameDirectory\saves\CopeCraft\playerdata\76ca1596-ad31-456d-93eb-55e42ab91255.dat -ErrorAction SilentlyContinue
Remove-Item $gameDirectory\saves\CopeCraft\playerdata\76ca1596-ad31-456d-93eb-55e42ab91255.dat_old -ErrorAction SilentlyContinue
git restore $gameDirectory\saves\CopeCraft\region\r.-1.-1.mca
git restore $gameDirectory\saves\CopeCraft\region\r.-1.0.mca
git restore $gameDirectory\saves\CopeCraft\region\r.0.-1.mca
git restore $gameDirectory\saves\CopeCraft\region\r.0.0.mca
git restore $gameDirectory\saves\CopeCraft\entities\r.0.-1.mca
Remove-Item $gameDirectory\saves\CopeCraft\session.lock -ErrorAction SilentlyContinue
Remove-Item $gameDirectory\saves\CopeCraft\stats\76ca1596-ad31-456d-93eb-55 -ErrorAction SilentlyContinue
Remove-Item $gameDirectory\saves\CopeCraft\stats\76ca1596-ad31-456d-93eb-55e42ab91255.json -ErrorAction SilentlyContinue

# Save/World Resources
#Remove-Item $gameDirectory\saves\CopeCraft\resources.zip -ErrorAction SilentlyContinue
#Compress-Archive -Path $gameDirectory\saves\CopeCraft\_resourcepack\* -DestinationPath $gameDirectory\saves\CopeCraft\resources.zip

# User Loaded Resources
Remove-Item $gameDirectory\resourcepacks\_resourcepack -Recurse -ErrorAction SilentlyContinue
Copy-Item $gameDirectory\saves\CopeCraft\_resourcepack -Destination "$gameDirectory\resourcepacks\Invisible Minecart Resource Pack" -Recurse
