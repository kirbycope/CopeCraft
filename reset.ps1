# Undo Level Edits and Play Data
$gameDirectory = "$env:APPDATA\.minecraft";
cd $gameDirectory\saves\CopeCraft
rm $gameDirectory\saves\CopeCraft\advancements\76ca1596-ad31-456d-93eb-55e42ab91255.json -ErrorAction SilentlyContinue
git restore $gameDirectory\saves\CopeCraft\data\raids.dat
rm $gameDirectory\saves\CopeCraft\data\scoreboard.dat -ErrorAction SilentlyContinue
git restore $gameDirectory\saves\CopeCraft\DIM-1\data\raids.dat
git restore $gameDirectory\saves\CopeCraft\DIM1\data\raids_end.dat
git restore $gameDirectory\saves\CopeCraft\entities\r.-1.-1.mca
git restore $gameDirectory\saves\CopeCraft\entities\r.-1.0.mca
git restore $gameDirectory\saves\CopeCraft\entities\r.0.0.mca
git restore $gameDirectory\saves\CopeCraft\level.dat
rm $gameDirectory\saves\CopeCraft\level.dat_old -ErrorAction SilentlyContinue
rm $gameDirectory\saves\CopeCraft\playerdata\76ca1596-ad31-456d-93eb-55e42ab91255.dat -ErrorAction SilentlyContinue
rm $gameDirectory\saves\CopeCraft\playerdata\76ca1596-ad31-456d-93eb-55e42ab91255.dat_old -ErrorAction SilentlyContinue
git restore $gameDirectory\saves\CopeCraft\region\r.-1.-1.mca
git restore $gameDirectory\saves\CopeCraft\region\r.-1.0.mca
git restore $gameDirectory\saves\CopeCraft\region\r.0.-1.mca
git restore $gameDirectory\saves\CopeCraft\region\r.0.0.mca
rm $gameDirectory\saves\CopeCraft\session.lock -ErrorAction SilentlyContinue
rm $gameDirectory\saves\CopeCraft\stats\76ca1596-ad31-456d-93eb-55 -ErrorAction SilentlyContinue
rm $gameDirectory\saves\CopeCraft\resources.zip -ErrorAction SilentlyContinue
Compress-Archive -Path $gameDirectory\saves\CopeCraft\_resourcepack -DestinationPath  $gameDirectory\saves\CopeCraft\resources.zip
