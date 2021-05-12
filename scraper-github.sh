#!/bin/bash
# 468 lignes au total ou 472 pdftotext

# lesspipe file.pdf | less ; pdftotext a.pdf
# res.txt =lesspipe ; UE3....pdf = pdftotext

# 468- (synthetis*15)
# 468-(2*15)
# 468-30








# number of synthesis
synthesis=2
synth1="synth1"
synth2="synth2"
# input_file="file.pdf"
# command_convert_to_txt=$(lesspipe file.pdf | less > res.txt)


# input_file_txt=$(cat res.txt)
input_filetxt="res.txt"

# output_file="output.txt"

# output_debug="debug.txt"
# mkdir -p ./generated-github
directory_output="./generated-github/"

# file output of synthesis for sed
file_output_synth1="sed_genfil_synth1.txt"
file_output_synth2="sed_genfil_synth2.txt"
file_output_merged="sed_genfile_merged.txt"


# file output of synthesis backup original
file_output_backup_synth1="sed_genfil_synth1_backup.txt"
file_output_backup_synth2="sed_genfil_synth2_backup.txt"


# file output of synthesis grep star of all genfiles
file_output_grep_star_synth1="grep_*_synth1.txt"
file_output_grep_star_synth2="grep_*_synth2.txt"

# grep part synth1
file_grep_star_synth1="grep_star_synth1.txt"
file_grep_modifiez_synth1="grep_modifiez_synth1.txt"
file_grep_creez_synth1="grep_creez_synth1.txt"
file_grep_ajoutez_synth1="grep_ajoutez_synth1.txt"
file_grep_ajouter_synth1="grep_ajouter_synth1.txt"


# grep part synth2
file_grep_star_synth2="grep_star_synth2.txt"
file_grep_modifiez_synth2="grep_modifiez_synth2.txt"
file_grep_creez_synth2="grep_creez_synth2.txt"
file_grep_ajoutez_synth2="grep_ajoutez_synth2.txt"
file_grep_ajouter_synth2="grep_ajouter_synth2.txt"

# uniq for duplicate synthesis is used to remove duplicate lines
uniq_for_duplicate_synth1=$(cat $directory_output/$file_output_backup_synth1 | uniq -c | cut -d ' ' -f7 | sort -r | head -n 1)
uniq_for_duplicate_synth2=$(cat $directory_output/$file_output_backup_synth2 | uniq -c | cut -d ' ' -f7 | sort -r | head -n 1)






# grep_synth1=$(cat -n res.txt | grep "Synthèse 1 :" )
# grep_synth2=$(cat -n res.txt | grep "Synthèse 2 :" )

grep_start_line=$(cat -n res.txt | grep "1. Introduction" | tr -s ' ' | cut -f1 | cut -f 2 -d ' ')
grep_end_line=$(cat -n res.txt | tail -n 1 | tr -s ' ' | cut -f1 | cut -f 2 -d ' ')
grep_synth1_line=$(cat -n res.txt | grep "Synthèse 1 :" | tr -s ' ' | cut -f1 | cut -f 2 -d ' ')
grep_synth2_line=$(cat -n res.txt | grep "Synthèse 2 :" | tr -s ' ' | cut -f1 | cut -f 2 -d ' ')

echo $grep_synth1_line
echo $grep_synth2_line


# grep_modifiez=$(cat res.txt | grep modifiez)
# grep_creez=$(cat res.txt | grep "creez")
# grep_ajoutez=$(cat res.txt | grep "ajoutez")
# grep_ajouter=$(cat res.txt | grep "ajouter")
# grep_star=$(cat "res.txt" | grep "*" )
# cat res.txt | grep "*" |


#  synthèse 1 calc
diff_start_line_to_synth1=$(( $(( $grep_synth1_line ))- $(( $grep_start_line )) ))
echo $diff_start_line_to_synth1


#  synthèse 2 calc
diff_start_line_to_synth2=$(( $(( $grep_synth2_line ))- $(( $grep_synth1_line )) ))
echo $diff_start_line_to_synth2

# cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 ))





# synthèse  1
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "*" 


echo "modifiez synth1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep modifiez 
echo "creez synth1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "creez" 
echo "ajoutez synth1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "ajoutez" 
echo "ajouter synth1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "ajouter" 


# synthèse  1 original files with cat -n  genfile
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "*" > $directory_output/$file_grep_star_synth1


echo "modifiez synth1 : genfile1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep modifiez > $directory_output/$file_grep_modifiez_synth1
echo "creez synth1 : genfile1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "creez" > $directory_output/$file_grep_creez_synth1
echo "ajoutez synth1 : genfile1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "ajoutez" > $directory_output/$file_grep_ajoutez_synth1
echo "ajouter synth1 : genfile1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "ajouter" > $directory_output/$file_grep_ajouter_synth1




# synthèse  1 for debug genfile
echo "synth1 debug genfile"
cat $directory_output/grep_*_synth1.txt | cut -f 5- -d ' '



# sorting synth 1: 

echo "sorting synth1 "
cat $directory_output/grep_*_synth1.txt | sort 

# sorting synth 1 for sed : 

echo "sorting synth1 for sed "
cat $directory_output/grep_*_synth1.txt | sort | cut -f 5- -d ' '
# sorting synth 1 for sed gen file : 

echo "sorting synth1 for sed gensedfile "
cat $directory_output/grep_*_synth1.txt | sort | cut -f 5- -d ' ' > $directory_output/$file_output_backup_synth1
cat $directory_output/grep_*_synth1.txt | sort | cut -f 5- -d ' ' > $directory_output/$file_output_synth1

# synthèse  1 files for sed  of gensedfile
echo "replacing by sed synth1 for gensedfile "

sed 's/modifiez/on a modifié/g' -i $directory_output/$file_output_synth1
sed 's/creez/, on a créé/g' -i $directory_output/$file_output_synth1
sed 's/ajoutez/, on a ajouté/g' -i $directory_output/$file_output_synth1
sed 's/ajouter/, on a ajouté/g' -i $directory_output/$file_output_synth1
sed 's/*/ /g' -i $directory_output/$file_output_synth1
# more pattern for sed : of synth1 :
sed 's/réaliser/on a réalisé/g' -i $directory_output/$file_output_synth1
sed 's/aurez/on a/g' -i $directory_output/$file_output_synth1
sed 's/sont bien configurés/on a bien configuré/g' -i $directory_output/$file_output_synth1
sed 's/vous pouvez affichez/on affiché/g' -i $directory_output/$file_output_synth1
sed 's/débranchez2/on a débranché/g' -i $directory_output/$file_output_synth1
sed 's/Importez/on a importé/g' -i $directory_output/$file_output_synth1
sed 's/inspectez/on a inspecté/g' -i $directory_output/$file_output_synth1
sed 's/affichez/on a affiché/g' -i $directory_output/$file_output_synth1
sed 's/visualisez/on a visualisé/g' -i $directory_output/$file_output_synth1
sed 's/afficher/on a affiché/g' -i $directory_output/$file_output_synth1
sed 's/la création/on a créé/g' -i $directory_output/$file_output_synth1
sed 's/Le formater/on a formaté/g' -i $directory_output/$file_output_synth1
sed 's/Le monter/on a monté/g' -i $directory_output/$file_output_synth1
sed 's/démontez/on a démonté/g' -i $directory_output/$file_output_synth1
sed 's/vous on a besoin/on a eu besoin de/g' -i $directory_output/$file_output_synth1
sed 's/Pour cela, on affiché/Pour cela, on a affiché/g' -i $directory_output/$file_output_synth1

# synthèse  1 files cat for sed  of gensedfile
echo "cat replaced by sed synth1 for gensedfile : remove duplicate lines "


echo "uniq for duplicate : for synth1 : " $uniq_for_duplicate_synth1

if [ $(($uniq_for_duplicate_synth1)) -ge 2 ]
then
    echo "uniq state true for synth1"
    cat $directory_output/$file_output_synth1 | uniq > $directory_output/$file_output_synth1
else
    echo "uniq state false for synth1"
fi
# synthèse  1 files cat for sed  of gensedfile
echo "cat replaced by sed synth1 for gensedfile "
cat $directory_output/$file_output_synth1





# synthèse  2
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "*" 


echo "modifiez synth2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep modifiez 
echo "creez synth2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "creez" 
echo "ajoutez synth2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "ajoutez" 
echo "ajouter synth2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "ajouter" 



# synthèse  2 original files with cat -n  genfile
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "*" > $directory_output/$file_grep_star_synth2


echo "modifiez synth2 : genfile2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep modifiez > $directory_output/$file_grep_modifiez_synth2
echo "creez synth2 : genfile2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "creez" > $directory_output/$file_grep_creez_synth2
echo "ajoutez synth2 : genfile2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "ajoutez" > $directory_output/$file_grep_ajoutez_synth2
echo "ajouter synth2 : genfile2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "ajouter" > $directory_output/$file_grep_ajouter_synth2




# synthèse  2 for debug genfile
echo "synth2 debug genfile"
cat $directory_output/grep_*_synth2.txt | cut -f 5- -d ' '



# sorting synth 2: 

echo "sorting synth2 "
cat $directory_output/grep_*_synth2.txt | sort 

# sorting synth 2 for sed by removing line column : 

echo "sorting synth2 for sed "
cat $directory_output/grep_*_synth2.txt | sort | cut -f 5- -d ' '
# sorting synth 2 for sed gen file : 

echo "sorting synth2 for sed gensedfile "
cat $directory_output/grep_*_synth2.txt | sort | cut -f 5- -d ' ' > $directory_output/$file_output_backup_synth2
cat $directory_output/grep_*_synth2.txt | sort | cut -f 5- -d ' ' > $directory_output/$file_output_synth2

# synthèse  2 files for sed  of gensedfile
echo "replacing by sed synth2 for gensedfile "

sed 's/modifiez/on a modifié/g' -i $directory_output/$file_output_synth2
sed 's/creez/, on a créé/g' -i $directory_output/$file_output_synth2
sed 's/ajoutez/, on a ajouté/g' -i $directory_output/$file_output_synth2
sed 's/ajouter/, on a ajouté/g' -i $directory_output/$file_output_synth2
sed 's/*/ /g' -i $directory_output/$file_output_synth2
# more pattern for sed : of synth2 :
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
sed 's/enfin créé/on a créé/g' -i $directory_output/$file_output_synth2
sed 's/Le formater/on a formaté/g' -i $directory_output/$file_output_synth2
sed 's/Le monter/on a monté/g' -i $directory_output/$file_output_synth2
sed 's/ensuite un VG  nommé vgstockage/ensuite on a nommé un VG en tant que vgstockage/g' -i $directory_output/$file_output_synth2

# synthèse  2 files cat for sed  of gensedfile : removing duplicate lines
echo "cat replaced by sed synth2 for gensedfile : removing duplicate lines"
# cat $directory_output/$file_output_synth2 | uniq > $directory_output/$file_output_synth2
echo "uniq for duplicate : for $synth2 : " $uniq_for_duplicate_synth2

# if [ $(($uniq_for_duplicate_synth2)) -ge 2 ]
# then
    echo "uniq state true : for $synth2"
    cat $directory_output/$file_output_synth2 | uniq > $directory_output/$file_output_synth2
# else
#     echo "uniq state false : for $synth2"
# fi

# synthèse  2 files cat for sed  of gensedfile
echo "cat replaced by sed synth2 for gensedfile "
cat $directory_output/$file_output_synth2


# combining these synth files but before removing it
rm -rf >> $directory_output/$file_output_merged


echo "combining synth1 : "
echo "synth1: " > $directory_output/$file_output_merged
cat $directory_output/$file_output_synth1 >> $directory_output/$file_output_merged


echo "combining synth2 : "
echo " " >> $directory_output/$file_output_merged
echo "synth2: " >> $directory_output/$file_output_merged
cat $directory_output/$file_output_synth2 >> $directory_output/$file_output_merged

echo "cat merged file : "
cat $directory_output/$file_output_merged

echo "merged at cat $directory_output"$file_output_merged" "




# to do
# to add more synthesis
# to add synthesis 1 dupliacte as synthesis1 bis
# to add support for ignore case for grep and for sed ignore
# to add more pattern to grep and sed
# to add more pattern regex to found all verbs
# ----- 25-04-21
# Faiblesse 
# Uniq c -> done
# Much More pattern grep
# Grep -A -B if need
# Search def from memos
# Use functions
# replace fews words/verbs by synonyms


# ------------------------------
# to do variabilize ; file separate
# to do concatenate all files by synthesis
# sed over synth files -> done


# to do remove headers before random lines selection
# to add -> Random line selection between the range
# to add random lines selection



