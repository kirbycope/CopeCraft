# Undo Level Edits and Play Data
$gameDirectory = "$env:APPDATA\.minecraft";
cd $gameDirectory\saves\CopeCraft
rm $gameDirectory\saves\CopeCraft\advancements\76ca1596-ad31-456d-93eb-55e42ab91255.json
git restore $gameDirectory\saves\CopeCraft\data\raids.dat
rm $gameDirectory\saves\CopeCraft\data\scoreboard.dat
git restore $gameDirectory\saves\CopeCraft\DIM-1\data\raids.dat
git restore $gameDirectory\saves\CopeCraft\DIM1\data\raids_end.dat
git restore $gameDirectory\saves\CopeCraft\entities\r.-1.-1.mca
git restore $gameDirectory\saves\CopeCraft\entities\r.-1.0.mca -ErrorAction SilentlyContinue
git restore $gameDirectory\saves\CopeCraft\entities\r.0.0.mca
git restore $gameDirectory\saves\CopeCraft\level.dat
rm $gameDirectory\saves\CopeCraft\level.dat_old
rm $gameDirectory\saves\CopeCraft\playerdata\76ca1596-ad31-456d-93eb-55e42ab91255.dat
rm $gameDirectory\saves\CopeCraft\playerdata\76ca1596-ad31-456d-93eb-55e42ab91255.dat_old
git restore $gameDirectory\saves\CopeCraft\region\r.-1.-1.mca
git restore $gameDirectory\saves\CopeCraft\region\r.-1.0.mca
git restore $gameDirectory\saves\CopeCraft\region\r.0.-1.mca
git restore $gameDirectory\saves\CopeCraft\region\r.0.0.mca
rm $gameDirectory\saves\CopeCraft\session.lock
rm $gameDirectory\saves\CopeCraft\stats\76ca1596-ad31-456d-93eb-55e42ab91255.json
