*** Variables ***
@{paises}    Alemanha     Brasil    Japão    Reino Unido    China
${contador}    ${0}

*** Test Cases ***
Numero de 0 a 10
    FOR    ${count}    IN RANGE    0    11
            Log To Console    \nNumero ${count}
    END
Lista de Paises
    FOR    ${pais}    IN    @{paises}
        Log to Console  \nPaís: ${pais}
    END
Lista de paises usando while
    ${rodo?}    Set Variable    ${True}
    
    WHILE  ${rodo?}
        ${contador}    Set Variable    ${contador+1}
        Log to Console  \nPaís: ${paises}[${contador}]
        IF    ${contador} >= ${4}
            ${rodo?}    Set Variable    ${False}
        END        
    END
    