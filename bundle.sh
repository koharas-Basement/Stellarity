read -p "Version: " version

rm -rf artifacts/${version}
mkdir -p artifacts/${version}

zip -r artifacts/${version}/Stellarity-${version}.zip data/ pack.mcmeta pack.png LICENSE.md
cd music_pack
zip -9 -r ../artifacts/${version}/Stellarity-${version}-Music.zip *
cd ../resource_pack
zip -r  ../artifacts/${version}/Stellarity-${version}-RP.zip *
cd ../artifacts/${version}
cp Stellarity-${version}-RP.zip Stellarity-${version}-RP-backport.zip
cd ../../backport
zip -r ../artifacts/${version}/Stellarity-${version}-RP-backport.zip *
