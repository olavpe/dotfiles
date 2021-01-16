#!bin/sh/

cd $HOME
while true; do
  inotifywait -r -e modify,create,delete ~/Documents/BibTex/
  rsync -v ~/Documents/BibTex/Olav_Pedersen_PreProject2020.bib ~/gitRepos/Olav_Pedersen_PreProject2020/bibliography.bib
  rsync -v ~/Documents/BibTex/Olav_Pedersen_Thesis2021.bib ~/gitRepos/Olav_Pedersen_Thesis2021/bibliography.bib
done
