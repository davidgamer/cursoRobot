*** Settings ***

*** Variables ***

#Dicionario
&{PESSOA}     nome=Jadson    email=jads@hotmail.com    idade=78    altura=1.58    
...    nacionalidade=Angolano    profissao=pedreiro

@{FRUTAS}     morango    banana    maçã    abacate    Manga

*** Test Cases ***

Imprimir dado pessoais

    Log To Console    ${PESSOA.nome}\n     
    Log To Console    ${PESSOA.email}\n   
    Log To Console    ${PESSOA.idade}\n

Imprimindo Frutas

    Log To Console     ${FRUTAS[0]}
    Log To Console     ${FRUTAS[1]}
    Log To Console     ${FRUTAS[2]}
    Log To Console     ${FRUTAS[3]}
    Log To Console     ${FRUTAS[4]} 