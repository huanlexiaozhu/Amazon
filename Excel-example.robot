*** Settings ***
Documentation   An example of ExcelLibrary of RobotFramework

Library     ExcelLibrary
Library     Collections
Library  ExcelLibrary
#Library     AutoItlibrary

*** Test Cases ***
Write Excel Test
Open Excel     kusan.xlsx
ExcelLibrary.Put String To Cell     sheet1  8   1  kusan
@{content}  Create list
append to list  ${content}  1   1   testcase1
append to list  ${content}  2   1   testcase2
Add to date     sheet1  4   4   4
Save Excel   kusan.xlsx
#Write to Excel File     /home/tj/Documents/kusan.xlsx
ExcelLibrary.Add New Sheet

