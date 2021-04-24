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


input_file_txt=$(cat res.txt)
input_filetxt="res.txt"

output_file="output.txt"

output_debug="debug.txt"

grep_synth1_line=$(cat -n res.txt | grep "Synthèse 1 :" )
grep_synth2_line=$(cat -n res.txt | grep "Synthèse 2 :" )

grep_start_line=$(cat -n res.txt | grep "1. Introduction" | tr -s ' ' | cut -f1 | cut -f 2 -d ' ')
grep_end_line=$(cat -n res.txt | tail -n 1 | tr -s ' ' | cut -f1 | cut -f 2 -d ' ')
grep_synth1_line=$(cat -n res.txt | grep "Synthèse 1 :" | tr -s ' ' | cut -f1 | cut -f 2 -d ' ')
grep_synth2_line=$(cat -n res.txt | grep "Synthèse 2 :" | tr -s ' ' | cut -f1 | cut -f 2 -d ' ')



grep_modifiez=$(cat res.txt | grep modifiez)
grep_creez=$(cat res.txt | grep "creez")
grep_ajoutez=$(cat res.txt | grep "ajoutez")
grep_ajouter=$(cat res.txt | grep "ajouter")
grep_star=$(cat "res.txt" )
# cat res.txt | grep "*"
# cat res.txt | grep "*"






# for linesstar in cat res.txt | grep "*"
# do
#     echo $linesstar
# done


# $grep_modifiez
cat res.txt | grep modifiez
# $($grep_modifiez)
# echo $?
# if [ $? -eq 0 ]
# then 
#     echo "ligne trouvée"
# else
#     echo "pas de ligne trouvée" 
#     echo "pas de ligne trouvée" > $output_debug
# fi

# for lines_modifiez in $grep_modifiez
# do

#     echo $lines_modifiez

#     # if [ $lines_modifiez == "" ]
#     # then 
#     #     echo "pas de ligne" > $output_debug
#     # else
#     #     echo "ligne trouvée"

#     # fi



# done

# for lines in $grep_creez
# do

    



# done


# for lines_creez in $grep_creez
# do

#     echo $lines_creez

#     # if [ $lines_creez == "" ]
#     # then 
#     #     echo "pas de ligne" > $output_debug
#     # else
#     #     echo "ligne trouvée"

#     # fi



# done

# for lines_star in $grep_star
# do

#     echo "$lines_star"

#     # if [ $lines_star == "" ]
#     # then 
#     #     echo "pas de ligne" > $output_debug
#     #     echo "pas de ligne" 
#     # else
#     #     echo "ligne trouvée"

#     # fi



# done


# for lines_ajoutez in $grep_ajoutez
# do

#     echo $lines_ajoutez

#     # if [ $lines_ajoutez == "" ]
#     # then 
#     #     echo "pas de ligne" > $output_debug
#     # else
#     #     echo "ligne trouvée"

#     # fi



# done


# for lines_ajouter in $grep_ajouter
# do

#     echo $lines_ajouter

#     # if [ $lines_ajouter == "" ]
#     # then 
#     #     echo "pas de ligne" > $output_debug
#     # else
#     #     echo "ligne trouvée"

#     # fi



# done


# for lines in $input_file_txt
# do
#     if [ ]
    



# done


# echo 