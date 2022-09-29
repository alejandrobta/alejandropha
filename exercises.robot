*** Settings ***
Documentation        Neste arquivo estarão presentes todos os exercicios de IF e FOR


*** Variables ***
${SIMPLES}
@{LISTA}
&{DICIONARIO}

${NOME}    Ale



*** Test Cases ***
Contando de 0 a 9
    [Tags]    CONTAR
    Contar de 0 a 9

Contando a lista de FRUTAS
    [TAGS]    FRUTA
    Percorrer itens de uma Lista

Exercise no FOR
    [Tags]    EXERCISE
    Exercise do FOR

Imprimir paises
    [Tags]    PAIS
    Imprimir lista de paises

Imprimindo o nome por decisão
    [Tags]    DECISAO
    Tomar desições

Imrimiendo con IF
    [Tags]    SERA
    Exercise do IF


*** Keywords ***
Contar de 0 a 9
    FOR    ${count}    IN RANGE    0    9
        Log To Console    ${count}
    END


Percorrer itens de uma Lista
    @{FRUTAS}    Create List    Morango    Banana    Abacaxi    Uva    Melância
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log To Console    ${FRUTA}
    END

Exercise do FOR
    FOR    ${COUNT}    IN RANGE    0    11
        Log To Console    Estou no número: ${COUNT}
    END 

Imprimir lista de paises
    @{PAISES}    Create List    BRASIL    HOLANDA    MEXICO    ARGENTINA    JAPÃO
    FOR    ${PAIS}    IN    @{PAISES}
        Log To Console    Eu Vou Conhecer ${PAIS}
    END

Tomar desições

    IF    "${NOME}"=="Maria"
        Log To Console    Vou fazer isso quando for a Maria

    ELSE IF    "${NOME}"=="JOAO"
        Log To Console    Vou fazer isso quando for a João

    ELSE
        Log To Console    Vou fazer isso só quando eu quiser

    END


Exercise do IF
    FOR    ${COUNT}    IN RANGE    0    11
        IF    ${COUNT}==5
            Log To Console    Estou no número: ${COUNT}
        ELSE IF    ${COUNT}==8
            Log To Console    Estou no numero: ${COUNT}
        ELSE
            Log To Console    Não sou 5 nem 8
        END
    END
