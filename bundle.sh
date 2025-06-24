rm artifacts/*.zip

zip -r artifacts/dp.zip data/ pack.mcmeta pack.png LICENSE.md
cd music_pack
zip -9 -r ../artifacts/music.zip *
cd ../resource_pack
zip -r  ../artifacts/rp.zip *