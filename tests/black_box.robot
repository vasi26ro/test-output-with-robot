*** Settings ***
Library    Process
Library    DataDriver    file=tests/input_data/BA_test_data_process.csv    dialect=unix
Test Template    Check Boundary Process

*** Keywords ***
Check Boundary Process
    [Documentation]    Test for boundary analysis created using Process library and utils.py.
    ...                utils.py is used to wrap the output function and to feed data via argparse.
    ...                Output function is missing detail design or requirements so all tests
    ...                where made based on tester experience.
    ...                Process library is used in order to capture stdout and stderr.
    [Arguments]        ${input_num}    ${type}    ${expected_stdout}    ${expected_stderr}
    ${command}=    Set Variable  python3 utils.py --num ${input_num} --type ${type}  
    ${result}=    Run Process   ${command}     shell=True
    Should Be Equal As Strings    ${result.stdout}    ${expected_stdout}   
    Should Contain    ${result.stderr}    ${expected_stderr}   

*** Test Cases ***
Check Boundary Process ${input_num}    ${type}    ${expected_stdout}    ${expected_stderr}
    
    