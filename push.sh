array=($(ls gamedata/sounds/))
for i in "${array[@]}"
do
	git add gamedata/sounds/$i
	git commit -m "gamedata/sounds/${i}"
	git push origin main
done