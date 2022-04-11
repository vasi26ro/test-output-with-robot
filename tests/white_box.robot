*** Settings ***
Documentation    White-box tests and Experience based tests.
Library    ../app.py

*** Variables ***
${valuestr}    Dragos
${value100float}    ${100.0}
@{valueList}    1    2
&{valueDict}    one=${1}


*** Test Cases ***
TC_001_DT_STR
    [Documentation]    White box. Error Guessing. First statement has comparison operators that can trigger TypeError if the operands are of different type.

    ${result}=    app.output    ${valuestr}
    Should Be True    ${result} is ${None}
    
TC_002_DT_FLOAT
    [Documentation]    White box. Error Guessing. First statement has comparison operators that can trigger TypeError if the operands are of different type.

    ${result}=    app.output    ${value100float}
    Should Be True    ${result} is None

TC_003_DT_LIST
    [Documentation]    White box. Error Guessing. First statement has comparison operators that can trigger TypeError if the operands are of different type.

    ${result}=    app.output    ${valueList}
    Should Be True    ${result} is None

TC_004_DT_DICT
    [Documentation]    White box. Error Guessing. First statement has comparison operators that can trigger TypeError if the operands are of different type.

    ${result}=    app.output    ${valueDict}
    Should Be True    ${result} is None

TC_005_DIV0
    [Documentation]    White box testing. Error Guessing. Last statement has a division with second argument num with no guards for division by zero.

    ${result}=    app.output    ${0}
    Should Be True    ${result} is None

TC_006_SE
    [Documentation]    White-box testing. Decision coverage and statement coverage.

    Run Keyword And Expect Error    System Error    app.output    ${13}

TC_007_SE
    [Documentation]    White-box testing. Decision coverage and statement coverage.

    Run Keyword And Expect Error    System Error    app.output    ${101}

TC_008_SE
    [Documentation]    White-box testing. Decision coverage and statement coverage.

    Run Keyword And Expect Error    System Error    app.output    ${-101}

TC_009_SE
    [Documentation]    White-box testing. Decision coverage and statement coverage.

    Run Keyword And Expect Error    System Error    app.output    ${13}
    