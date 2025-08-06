read -p "Version: " version

echo "Checking mods metadata:"
grep -r ${version} mod/

read -p "Do you see ${version} in the above list? If not update your mods metadata. "

rm -rf artifacts/${version}
mkdir -p artifacts/${version}

cd datapack/
zip -r ../artifacts/${version}/Stellarity-${version}.zip data/ pack.mcmeta pack.png
cp ../artifacts/${version}/Stellarity-${version}.zip ../artifacts/${version}/mod.zip
cd ../music_pack
zip -9 -r ../artifacts/${version}/Stellarity-${version}-Music.zip *
cd ../nullscape_compat
zip -r ../artifacts/${version}/Stellarity-${version}-NSC.zip data/ pack.mcmeta
cd ../resource_pack
zip -r  ../artifacts/${version}/Stellarity-${version}-RP.zip *
zip -r ../artifacts/${version}/mod.zip assets/
cd ../mod
zip -r ../artifacts/${version}/mod.zip *
cd ../artifacts/${version}
mv mod.zip Stellarity-${version}.jar

cd ..