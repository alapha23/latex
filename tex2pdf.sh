#! /bin/bash
myfile=$1

if [ -z $1 ]; then
echo "Usage: bash tex2pdf.sh <filename> "
	exit 1;
fi

foo=${myfile%".tex"}
pdflatex $myfile
bibtex $foo
pdflatex $myfile

rm *.aux
#latex $myfile
#dvips -o ${myfile}.ps $myfile
#ps2pdf -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dEmbedAllFonts=true -dSubsetFonts=true -dMaxSubsetPct=100 ${myfile}.ps ${myfile}.pdf
