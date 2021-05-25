*** Test Cases ***
C->F
    @{tc_list}  create list  ${0}  ${350}  ${-32}  ${100}
    @{tf_list}  create list  ${32}  ${662}  ${-25.6}  ${212}
    Compare Temperatures  ${tc_list}[0]  ${tf_list}[0]
    Compare Temperatures  ${tc_list}[1]  ${tf_list}[1]
    Compare Temperatures  ${tc_list}[2]  ${tf_list}[2]
    Compare Temperatures  ${tc_list}[3]  ${tf_list}[3]

*** Keywords ***
Calculate Fahrenheit
    [arguments]  ${t_c}
    ${t_f}=  evaluate  9*${t_c}/5 + 32
    [return]  ${t_f}
Compare Temperatures
    [arguments]  ${tc}  ${tf_actual}
    ${tf_calc}  Calculate Fahrenheit  ${tc}
    should be equal  ${tf_actual}  ${tf_calc}  Значения не совпадают
