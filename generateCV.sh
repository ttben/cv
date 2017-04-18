#! /bin/bash
rm cv-res*.tex

#sed '/#{experience}/{
#    s/#{experience}//g
#    r experiencefr.tex
#}' cv-test.tex > cv-res.tex | 
#sed -i '' '/#{formation}/{
#    s/#{formation}//g
#    r formationfr.tex
#}' > cv-res.tex

sed '/#{experience}/{
    s/#{experience}//g
    r fr/experiencefr.tex
}' cv-template.tex | 
sed '/#{formation}/{
    s/#{formation}//g
    r fr/formationfr.tex
}' |
sed '/#{cours}/{
    s/#{cours}//g
    r fr/coursfr.tex
}'|
sed '/#{recherche}/{
    s/#{recherche}//g
    r fr/recherchefr.tex
}'|
sed '/#{competence}/{
    s/#{competence}//g
    r fr/competencefr.tex
}'|
sed '/#{langue}/{
    s/#{langue}//g
    r fr/languefr.tex
}' > cv-fr.tex

pdflatex cv-fr.tex



sed '/#{experience}/{
    s/#{experience}//g
    r en/experienceen.tex
}' cv-template.tex | 
sed '/#{formation}/{
    s/#{formation}//g
    r en/formationen.tex
}' |
sed '/#{cours}/{
    s/#{cours}//g
    r en/coursen.tex
}'|
sed '/#{recherche}/{
    s/#{recherche}//g
    r en/rechercheen.tex
}'|
sed '/#{competence}/{
    s/#{competence}//g
    r en/competenceen.tex
}'|
sed '/#{langue}/{
    s/#{langue}//g
    r en/langueen.tex
}' > cv-en.tex

pdflatex cv-en.tex

rm -rf *.out *.log *.aux
