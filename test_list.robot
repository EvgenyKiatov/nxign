*** Variables ***
@{list}  ${1}  ${2}  ${3}  ${5}  ${1}  ${0}  ${-1}  ${10}
*** Test Cases ***
Min and Max
    ${max}=  evaluate  max($list)
    should be equal  ${10}  ${max}  Максимальные значения не совпадают
    ${min}=  evaluate  min($list)
    should be equal  ${-1}  ${min}  Минимальные значения не совпадают
Unique Values
    ${set}=  evaluate  set($list)
    ${tset}=  evaluate  set([2,1,3,5,0,-1,10])
    should be equal  ${tset}  ${set}  Уникальные значения определены не правильно
Summa
    ${sum}=  evaluate  sum($list)
    should be equal  ${21}  ${sum}  Суммы не совпадают



