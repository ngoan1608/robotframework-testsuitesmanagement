# **************************************************************************************************************
#  Copyright 2020-2022 Robert Bosch GmbH
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
# **************************************************************************************************************
#
# tsm-testfile-05-err-1.robot (with variant configuration; JSON file contains syntax errors)
#
# --------------------------------------------------------------------------------------------------------------

*** Settings ***

Library    RobotFramework_TestsuitesManagement    WITH NAME    tm
Library    RobotframeworkExtensions.Collection    WITH NAME    rf.extensions

Suite Setup       tm.testsuite_setup    ./config/tsm-test_variants_err_1.json
Suite Teardown    tm.testsuite_teardown
Test Setup        tm.testcase_setup
Test Teardown     tm.testcase_teardown

*** Test Cases ***
Test Case tsm-testfile-05-err-1
   [documentation]    tsm-testfile-05-err-1
   rf.extensions.pretty_print    ${CONFIG.Project}    PARAMS-VERIFIKATION : (CONFIG.Project)
   Log    teststring_common : ${teststring_common} (tsm-testfile-05-err-1.robot)      console=yes
   Log    teststring_variant : ${teststring_variant} (tsm-testfile-05-err-1.robot)    console=yes
   Log    teststring_bench : ${teststring_bench} (tsm-testfile-05-err-1.robot)        console=yes
   Log    I must not be executed    console=yes
