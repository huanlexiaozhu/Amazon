*** Settings ***
Documentation   An example of ExcelLibrary of RF

Library     ExcelLibrary
Library     Collections
Library  ExcelLibrary
#Library     AutoItlibrary

*** Test Cases ***
Write Excel Test
Open Excel     kusan.xlsx
ExcelLibrary.Put String To Cell     sheet1  0   0  kusan
@{content}  Create list
append to list  ${content}  1   1   testcase1
append to list  ${content}  2   1   testcase2
Add to date     sheet1  3   3   3
Save Excel   kusan.xlsx
#Write to Excel File     /home/tj/Documents/kusan.xlsx
ExcelLibrary.Add New Sheet

