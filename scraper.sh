#!/bin/bash
# 468 lignes au total ou 472 pdftotext

# lesspipe file.pdf | less ; pdftotext a.pdf
# res.txt =lesspipe ; UE3....pdf = pdftotext

# 468- (synthetis*15)
# 468-(2*15)
# 468-30








# number of synthesis
synthesis=2
# input_file="file.pdf"
# command_convert_to_txt=$(lesspipe file.pdf | less > res.txt)


# input_file_txt=$(cat res.txt)
input_filetxt="res.txt"

# output_file="output.txt"

# output_debug="debug.txt"

directory_output="./gen/"



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


# to do variabilize ; file separate
# to do concatenate all files by synthesis
# sed over synth files -> done



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
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "*" > $directory_output/grep_star_synth1.txt


echo "modifiez synth1 : genfile1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep modifiez > $directory_output/grep_modifiez_synth1.txt
echo "creez synth1 : genfile1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "creez" > $directory_output/grep_creez_synth1.txt
echo "ajoutez synth1 : genfile1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "ajoutez" > $directory_output/grep_ajoutez_synth1.txt
echo "ajouter synth1 : genfile1 : "
cat -n res.txt | head -n $(( $grep_synth1_line ))  | tail -n $(( $diff_start_line_to_synth1 )) | grep "ajouter" > $directory_output/grep_ajouter_synth1.txt




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
cat $directory_output/grep_*_synth1.txt | sort | cut -f 5- -d ' ' > $directory_output/sed_genfil_synth1_backup.txt
cat $directory_output/grep_*_synth1.txt | sort | cut -f 5- -d ' ' > $directory_output/sed_genfil_synth1.txt

# synthèse  1 files for sed  of gensedfile
echo "replacing by sed synth1 for gensedfile "

sed 's/modifiez/on a modifié/g' -i $directory_output/sed_genfil_synth1.txt
sed 's/creez/, on a créé/g' -i $directory_output/sed_genfil_synth1.txt
sed 's/ajoutez/, on a ajouté/g' -i $directory_output/sed_genfil_synth1.txt
sed 's/ajouter/, on a ajouté/g' -i $directory_output/sed_genfil_synth1.txt
sed 's/*/ /g' -i $directory_output/sed_genfil_synth1.txt

# synthèse  1 files cat for sed  of gensedfile
echo "cat replaced by sed synth1 for gensedfile "
cat $directory_output/sed_genfil_synth1.txt | uniq > $directory_output/sed_genfil_synth1.txt

# synthèse  1 files cat for sed  of gensedfile
echo "cat replaced by sed synth1 for gensedfile "
cat $directory_output/sed_genfil_synth1.txt

# to do remove headers before random lines selection
# to add -> Random line selection between the range




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
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "*" > $directory_output/grep_star_synth2.txt


echo "modifiez synth2 : genfile2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep modifiez > $directory_output/grep_modifiez_synth2.txt
echo "creez synth2 : genfile2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "creez" > $directory_output/grep_creez_synth2.txt
echo "ajoutez synth2 : genfile2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "ajoutez" > $directory_output/grep_ajoutez_synth2.txt
echo "ajouter synth2 : genfile2 : "
cat -n res.txt | head -n $(( $grep_synth2_line ))  | tail -n $(( $diff_start_line_to_synth2 )) | grep "ajouter" > $directory_output/grep_ajouter_synth2.txt




# synthèse  2 for debug genfile
echo "synth2 debug genfile"
cat $directory_output/grep_*_synth2.txt | cut -f 5- -d ' '



# sorting synth 2: 

echo "sorting synth2 "
cat $directory_output/grep_*_synth2.txt | sort 

sorting synth 2 for sed by removing line column : 

echo "sorting synth2 for sed "
cat $directory_output/grep_*_synth2.txt | sort | cut -f 5- -d ' '
# sorting synth 2 for sed gen file : 

echo "sorting synth2 for sed gensedfile "
cat $directory_output/grep_*_synth2.txt | sort | cut -f 5- -d ' ' > $directory_output/sed_genfil_synth2_backup.txt
cat $directory_output/grep_*_synth2.txt | sort | cut -f 5- -d ' ' > $directory_output/sed_genfil_synth2.txt

# synthèse  2 files for sed  of gensedfile
echo "replacing by sed synth2 for gensedfile "

sed 's/modifiez/on a modifié/g' -i $directory_output/sed_genfil_synth2.txt
sed 's/creez/, on a créé/g' -i $directory_output/sed_genfil_synth2.txt
sed 's/ajoutez/, on a ajouté/g' -i $directory_output/sed_genfil_synth2.txt
sed 's/ajouter/, on a ajouté/g' -i $directory_output/sed_genfil_synth2.txt
sed 's/*/ /g' -i $directory_output/sed_genfil_synth2.txt

# synthèse  2 files cat for sed  of gensedfile : removing duplicate lines
echo "cat replaced by sed synth2 for gensedfile : removing duplicate lines"
cat $directory_output/sed_genfil_synth2.txt | uniq > $directory_output/sed_genfil_synth2.txt


# synthèse  2 files cat for sed  of gensedfile
echo "cat replaced by sed synth2 for gensedfile "
cat $directory_output/sed_genfil_synth2.txt


