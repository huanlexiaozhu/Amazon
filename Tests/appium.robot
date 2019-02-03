## Cloud setup
echo "Starting Appium ..."

/opt/appium/appium/bin/appium.js --log-no-colors --log-timestamp --command-timeout 120 >appium.log 2>&1 &

# Wait for Appium to fully launch
sleep 10

ps -ef|grep appium

echo "Extracting tests.zip..."
unzip tests.zip

echo "Installing pip"
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user

echo "Installing requirements"
~/.local/bin/pip install -r ./resources/requirements.txt --target .

## Start test execution
echo "Running test"
pybot -x TEST-all tests/android_example.robot

*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations

*** Keywords ***
Provided precondition
    Setup system under test