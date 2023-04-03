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
# --------------------------------------------------------------------------------------------------------------
#
# test_11_RETURN_VALUE_GOODCASE.py
#
# XC-CT/ECA3-Queckenstedt
#
# 03.04.2023 - 18:06:03
#
# --------------------------------------------------------------------------------------------------------------

import pytest
from pytestlibs.CExecute import CExecute

# --------------------------------------------------------------------------------------------------------------

class Test_RETURN_VALUE_GOODCASE:

# --------------------------------------------------------------------------------------------------------------
   # Expected: Return value of Robot Framework indicates number of FAILED together with number of UNKNOWN tests
   # (Single file execution)
   @pytest.mark.parametrize(
      "Description", ["Robot file containing several tests, some PASSED, some FAILED (3), some UNKNOWN (4)",]
   )
   def test_TSM_0600(self, Description):
      nReturn = CExecute.Execute("TSM_0600")
      assert nReturn == 0
# --------------------------------------------------------------------------------------------------------------
