*** Variables ***



*** Keywords ***

Criar Email "${nome}" "${sobrenome}" "${idade}"

    ${string_formatado}   Catenate    SEPARATOR=_    ${nome}    ${sobrenome}    ${idade}
    ${email_formatado}    Evaluate    "${string_formatado}"+"robo.com"

    RETURN    ${email_formatado}

*** Test Cases ***

Imprimindo meu novo email

    ${email}    Criar Email "david" "henrique" "30"
    Log To Console     \n\n${email}\n\n