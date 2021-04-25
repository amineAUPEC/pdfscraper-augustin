# sed patterns
# after it will be grep patterns
synth1: 
sed 's/modifiez/on a modifié/g' -i $directory_output/$file_output_synth1
sed 's/creez/, on a créé/g' -i $directory_output/$file_output_synth1
sed 's/ajoutez/, on a ajouté/g' -i $directory_output/$file_output_synth1
sed 's/ajouter/, on a ajouté/g' -i $directory_output/$file_output_synth1
sed 's/*/ /g' -i $directory_output/$file_output_synth1


sed 's/réaliser/réalisé/g' -i $directory_output/$file_output_synth1
sed 's/aurez/on a/g' -i $directory_output/$file_output_synth1
sed 's/sont bien configurés/on a bien configuré/g' -i $directory_output/$file_output_synth1
sed 's/vous pouvez affichez/on affiché/g' -i $directory_output/$file_output_synth1
sed 's/débranchez2/n a débranché/g' -i $directory_output/$file_output_synth1
sed 's/Importez/on a importé/g' -i $directory_output/$file_output_synth1
sed 's/inspectez/on a inspectez/g' -i $directory_output/$file_output_synth1
sed 's/affichez/on a affiché/g' -i $directory_output/$file_output_synth1
sed 's/visualisez/on a visualisé/g' -i $directory_output/$file_output_synth1
sed 's/afficher/on a affiché/g' -i $directory_output/$file_output_synth1
sed 's/la création/on a créé/g' -i $directory_output/$file_output_synth1
sed 's/Le formater/on a formaté/g' -i $directory_output/$file_output_synth1
sed 's/Le monter/on a monté/g' -i $directory_output/$file_output_synth1
sed 's/démontez/on a démonté/g' -i $directory_output/$file_output_synth1

réaliser -> réalisé
aurez -> on a
sont bien configurés -> on a bien configuré
vous pouvez affichez -> on affiché
débranchez2-> on a débranché 
Importez ->   on a importé
inspectez ->  on a inspectez
affichez -> on a affiché

visualisez -> on a visualisé
afficher -> on a affiché

la création -> on a créé
   •   Le formater -> on a formaté
   •   Le monter  -> on a monté
démontez -> on a démonté
 
synth2: 
sed 's/modifiez/on a modifié/g' -i $directory_output/$file_output_synth2
sed 's/creez/, on a créé/g' -i $directory_output/$file_output_synth2
sed 's/ajoutez/, on a ajouté/g' -i $directory_output/$file_output_synth2
sed 's/ajouter/, on a ajouté/g' -i $directory_output/$file_output_synth2
sed 's/*/ /g' -i $directory_output/$file_output_synth2

sed 's/ensuite un VG  nommé vgstockage/ensuite on a nommé un VG en tant que vgstockage/g' -i $directory_output/$file_output_synth2
sed 's/nommé/on a nommé/g' -i $directory_output/$file_output_synth2
sed 's/Pour l’instant votre VG est composé/Pour l’instant notre VG est composé de/g' -i $directory_output/$file_output_synth2
sed 's/votre/notre/g' -i $directory_output/$file_output_synth2
sed 's/créer/créé/g' -i $directory_output/$file_output_synth2
sed 's/Configurez/on a configuré/g' -i $directory_output/$file_output_synth2
sed 's/augmentez/on a augmenté/g' -i $directory_output/$file_output_synth2
sed 's/ne le sait pas/on ne le savait pas/g' -i $directory_output/$file_output_synth2
sed 's/Comparez/on a comparé/g' -i $directory_output/$file_output_synth2
sed 's/utiliser/on a utilisé/g' -i $directory_output/$file_output_synth2
sed 's/vous devez étendre/on a étendu/g' -i $directory_output/$file_output_synth2
sed 's/étendre/on a étendu/g' -i $directory_output/$file_output_synth2
sed 's/pour vérifier/on a vérifié/g' -i $directory_output/$file_output_synth2
sed 's/vérifier/on a vérifié/g' -i $directory_output/$file_output_synth2
sed 's/allouer/on a alloué/g' -i $directory_output/$file_output_synth2
sed 's/on a ajouté-lui/on lui a ajouté/g' -i $directory_output/$file_output_synth2


# sed 's///g' -i $directory_output/$file_output_synth2




ensuite un VG  nommé vgstockage -> ensuite on a nommé un VG en tant que vgstockage
nommé -> on a nommé 
 

Pour l’instant votre VG est composé -> Pour l’instant notre VG est composé de
votre -> notre


créer -> créé
Configurez -> on a configuré
augmentez -> on a augmenté
ne le sait pas -> on ne le savait pas


Comparez -> on a comparé

utiliser -> on a utilisé

vous devez étendre -> on a étendu
étendre -> on a étendu

pour vérifier -> on a vérifié
vérifier -> on a vérifié
allouer -> on a alloué

on a ajouté-lui -> on lui a ajouté

------ ++ for more pattern to grep /sed in the future
sait pas -> on sait 
vous devez étendre -> on étend
étendre -> on étend
débranchez-> on a débranché 
débrancher-> on a débranché 
