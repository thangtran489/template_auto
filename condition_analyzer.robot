*** Settings ***
Resource    ../../libs/bdd_keywords/condition_analyzer.robot
Resource    ../../libs/bdd_keywords/common_funtions.robot
Variables   ../../../sqa_resource/common_variables.py


*** Test Cases ***
CA_CHGLG_FUNC_01 - Client requests successfully
    [Documentation]         Test happy case that the client sends GET request
    ...     to the /changelog endpoint.
    ...
    ...                     **Description**:
    ...                         request the server using GET method and verify
    ...     the server returns the valid text data and status code 200.
    ...
    ...                     **Objective**:
    ...                         Verify that the /changelog API is
    ...     working fine and returns correct changelog.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Send the GET request to the /changelog API.
    ...                         3.  Verify the server returns the correct changelog
    ...                             and the status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server responses the correct changelog
    ...                         -   The status code is 200.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Version
    ...                     story: Changelog

    Given The client has been authenticated in Condition Analyzer service
    When The client requests for the changelog of Condition Analyzer service
    Then The server should return the correct changelog of Condition Analyzer service


CA_VER_FUNC_01 - Client requests successfully
    [Documentation]         Test happy case that the client sends GET request
    ...     to the /version endpoint.
    ...
    ...                     **Description**:
    ...                         request the server using GET method and verify
    ...     the server returns the valid text data and status code 200.
    ...
    ...                     **Objective**:
    ...                         Verify that the /version API is working fine
    ...     and returns correct version.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Send the GET request to the /version API.
    ...                         3.  Verify the server returns the correct version
    ...                             and the status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server responses the correct version
    ...                         -   The status code is 200.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Version
    ...                     story: Version

    Given The client has been authenticated in Condition Analyzer service
    When The client requests for the version of Condition Analyzer service
    Then The server should return the correct version of Conditioni Analyzer service


CA_DUM_FUNC_01 - Client requests successfully
    [Documentation]         Test happy case that the client sends POST request
    ...     to the /vibrationSignal/analysis/dummy endpoint.
    ...
    ...                     **Description**:
    ...                         request the server using POST method and verify
    ...     the server returns the code 200.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis/dummy API is working fine
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Send the POST request to the /vibrationSignal/analysis/dummy API.
    ...                         3.  Verify the server returns data and the status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server return on-empty message.
    ...                         -   The status code is 200.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Dummy

    Given The client has been authenticated in Condition Analyzer service
    When The client requests for the dummy of Condition Analyzer service
    Then The server should return non-empty data and the status code 200


CA_ANLYS_FUNC_01 - Send requests with the requestedAnalyses = |"BEARING"| and other required params in positive case
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING"] and
    ...     other required params in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["BEARING"] in basic case.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params.
    ...                         3.  Send a POST request with the prepared dataset after changing the
    ...                             requestedAnalyses value to '["BEARING"]'.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "replace"]}'
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_02 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and other required params in positive case
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] and other required params
    ...     in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["BEARING", "HSB"] in basic case.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING", "HSB"].
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "HSB", "replace"]}'
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_03 - Send requests with the requestedAnalyses = |"BEARING", "HSB", "CHARACVALUES"| and other required params in positive case
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and
    ...     other required params in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] in basic case.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING", "HSB", "CHARACVALUES"].
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "HSB", "CHARACVALUES"]}'
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_04 - Send requests with the requestedAnalyses = |"HSB"| and other required params in positive case
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["HSB"] and other required params
    ...     in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["HSB"] in basic case.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params.
    ...                         3.  Send a POST request with the prepared dataset after changing the requestedAnalyses value to ["HSB"].
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["HSB", "replace"]}'
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_05 - Send requests with the requestedAnalyses = |"HSB", "CHARACVALUES"| and other required params in positive case
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["HSB", "CHARACVALUES"] and
    ...     other required params in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["HSB", "CHARACVALUES"] in basic case.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["HSB", "CHARACVALUES"].
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["HSB", "CHARACVALUES", "replace"]}'
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_06 - Send requests with the requestedAnalyses = |"CHARACVALUES"| and other required params in positive case
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] and other required params
    ...     in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["CHARACVALUES"] in basic case.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["CHARACVALUES"].
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"]}'
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_07 - Send requests with the requestedAnalyses = |"BEARING"| and other required params in positive case with incipient defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING"] and other required params
    ...     with incipient defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["BEARING"] in basic case and incipient defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and incipient defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING"].
    ...                         4.  Verify that the server returns an incipient defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "replace"]}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'

CA_ANLYS_FUNC_08 - Send requests with the requestedAnalyses = |"BEARING"| and other required params in positive case with advanced defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING"] and other required params
    ...     with advanced defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly
    ...     with the requestedAnalyses = ["BEARING"] in basic case and advanced defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and advanced defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING"].
    ...                         4.  Verify that the server returns an advanced defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "replace"]}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_09 - Send requests with the requestedAnalyses = |"BEARING"| and other required params in positive case with serious defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING"] and other required params
    ...     with serious defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly
    ...     with the requestedAnalyses = ["BEARING"] in basic case and serious defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and serious defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING"].
    ...                         4.  Verify that the server returns an serious defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "replace"]}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_10 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and other required params in positive case with incipient defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] and other required params
    ...     with incipient defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["BEARING", "HSB"] in basic case and incipient defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and incipient defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING", "HSB"].
    ...                         4.  Verify that the server returns an incipient defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "HSB", "replace"]}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'

CA_ANLYS_FUNC_11 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and other required params in positive case with advanced defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] and other required params
    ...     with advanced defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly
    ...     with the requestedAnalyses = ["BEARING", "HSB"] in basic case and advanced defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and advanced defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING", "HSB"].
    ...                         4.  Verify that the server returns an advanced defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "HSB", "replace"]}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_12 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and other required params in positive case with serious defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] and other required params
    ...     with serious defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly
    ...     with the requestedAnalyses = ["BEARING", "HSB"] in basic case and serious defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and serious defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING", "HSB"].
    ...                         4.  Verify that the server returns an serious defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "HSB", "replace"]}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_13 - Send requests with the requestedAnalyses = |"BEARING", "HSB", "CHARACVALUES"| and other required params in positive case with incipient defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and other required params
    ...     with incipient defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] in basic case and incipient defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and incipient defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING", "HSB", "CHARACVALUES"].
    ...                         4.  Verify that the server returns an incipient defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "HSB", "CHARACVALUES"]}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'

CA_ANLYS_FUNC_14 - Send requests with the requestedAnalyses = |"BEARING", "HSB", "CHARACVALUES"| and other required params in positive case with advanced defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and other required params
    ...     with advanced defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly
    ...     with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] in basic case and advanced defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and advanced defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING", "HSB", "CHARACVALUES"].
    ...                         4.  Verify that the server returns an advanced defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "HSB", "CHARACVALUES"]}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_15 - Send requests with the requestedAnalyses = |"BEARING", "HSB", "CHARACVALUES"| and other required params in positive case with serious defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and other required params
    ...     with serious defect data in positive case then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly
    ...     with the requestedAnalyses = ["BEARING", "HSB"] in basic case and serious defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and serious defect data.
    ...                         3.  Send a POST request with the prepared dataset after changing
    ...                             the requestedAnalyses value to ["BEARING", "HSB", "CHARACVALUES"].
    ...                         4.  Verify that the server returns an serious defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["BEARING", "HSB", "CHARACVALUES"]}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_16 - Send requests with the timesignals|"sampleCount"| = 512 in positive basic case
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with timesignals['sampleCount'] = 512 along with
    ...     other valid minimum required params and verify the server response
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the timesignals['sampleCount'] = 512 in basis case
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and
    ...                             the timesignals['sampleCount'] = 512 along with
    ...                             the corresponding amount of timesignals['values'] values.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns an serious defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params
        And sampleCount is set to '512' with the corresponding amount of values in timesignal
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_17 - Send requests with the timesignals|"sampleCount"| > 512 in positive basic case
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with timesignals['sampleCount'] = 512 along with
    ...     other valid minimum required params and verify the server response
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis works correctly with
    ...     the timesignals['sampleCount'] > 512 in basis case
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and
    ...                             the timesignals['sampleCount'] > 512 along with
    ...                             the corresponding amount of timesignals['values'] values.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns an serious defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params
        And sampleCount is set to '513' with the corresponding amount of values in timesignal
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_18 - Send requests with the valid assetType values
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid assetType values.
    ...
    ...                     **Objective**:
    ...                         Send requests with the valid assetType values and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and the assetType = "UNKNOWN".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of assetType values:
    ...                             "BEARING_BLOCK", "BELT", "COMPRESSOR", "E_MOTOR", "FAN", "FRICTION_BEARING", "GEARBOX",
    ...                             "GENERATOR", "OTHER", "PUMP", "ROLLER", "SHAFT", "THRUSTER", "TURBINE", "WIND_TURBINE ".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${ASSET_TYPE}       IN      @{ASSET_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"assetType": "${ASSET_TYPE}"}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_19 - Send requests with the valid assetType values and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid assetType values and
    ...     the incipient bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the assetType has correct value with the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient dataset with only required body params and the assetType = "UNKNOWN".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of assetType values:
    ...                             "BEARING_BLOCK", "BELT", "COMPRESSOR", "E_MOTOR", "FAN", "FRICTION_BEARING", "GEARBOX",
    ...                             "GENERATOR", "OTHER", "PUMP", "ROLLER", "SHAFT", "THRUSTER", "TURBINE", "WIND_TURBINE ".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${ASSET_TYPE}       IN      @{ASSET_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "incipient" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"assetType": "${ASSET_TYPE}"}'
        Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_20 - Send requests with the valid assetType values and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid assetType values and
    ...     the advanced bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the assetType has correct value with the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced dataset with only required body params and the assetType = "UNKNOWN".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of assetType values:
    ...                             "BEARING_BLOCK", "BELT", "COMPRESSOR", "E_MOTOR", "FAN", "FRICTION_BEARING", "GEARBOX",
    ...                             "GENERATOR", "OTHER", "PUMP", "ROLLER", "SHAFT", "THRUSTER", "TURBINE", "WIND_TURBINE ".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${ASSET_TYPE}       IN      @{ASSET_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "advanced" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"assetType": "${ASSET_TYPE}"}'
        Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_21 - Send requests with the valid assetType values and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid assetType values and
    ...     the serious bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the assetType has correct value with the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious dataset with only required body params and the assetType = "UNKNOWN".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of assetType values:
    ...                             "BEARING_BLOCK", "BELT", "COMPRESSOR", "E_MOTOR", "FAN", "FRICTION_BEARING", "GEARBOX",
    ...                             "GENERATOR", "OTHER", "PUMP", "ROLLER", "SHAFT", "THRUSTER", "TURBINE", "WIND_TURBINE ".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${ASSET_TYPE}       IN      @{ASSET_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "serious" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"assetType": "${ASSET_TYPE}"}'
        Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_22 - Send requests with the valid fixedInnerRace = true
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the fixedInnerRace = true and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the fixedInnerRace = true.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and the fixedInnerRace = true.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"bearings": [{"fixedInnerRace": true}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_23 - Send requests with the valid fixedInnerRace = false
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the fixedInnerRace = false and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the fixedInnerRace = false.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and the fixedInnerRace = false.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"bearings": [{"fixedInnerRace": false}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_24 - Send requests with the valid random name values
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome name values and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the name has correct value.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and
    ...                             a random string of the "name" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"bearings": [{"name": "random"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_25 - Send requests with the valid random name values and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome name values and
    ...     the incipient bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the name has correct value with the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient dataset with only required body params and
    ...                             a random string of the "name" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"bearings": [{"name": "random"}]}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_26 - Send requests with the valid random name values and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome name values and
    ...     the advanced bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the name has correct value with the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced dataset with only required body params and
    ...                             a random string of the "name" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"bearings": [{"name": "random"}]}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_27 - Send requests with the valid random name values and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome name values and
    ...     the serious bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the name has correct value with the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious dataset with only required body params and
    ...                             a random string of the "name" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"bearings": [{"name": "random"}]}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_28 - Send requests with the valid random rotationalSpeedRatio values
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome rotationalSpeedRatio values
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the rotationalSpeedRatio has correct value.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and
    ...                             a float number of the "rotationalSpeedRatio" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the correct message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"bearings": [{"rotationalSpeedRatio": "random_float"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_29 - Send requests with the valid random customerRef values
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome customerRef values and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the customerRef has correct value.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and
    ...                             a random string of the "customerRef" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the correct message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"customerRef": "random"}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_30 - Send requests with the valid random customerRef values and the incipient bearing defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome customerRef values and
    ...     the incipient defect data then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the customerRef has correct value with the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient bearing defect dataset with only required body params
    ...                             and a random string of the "customerRef" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"customerRef": "random"}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_31 - Send requests with the valid random customerRef values and the advanced bearing defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome customerRef values and
    ...     the advanced defect data then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the customerRef has correct value with the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced bearing defect dataset with only required body params
    ...                             and a random string of the "customerRef" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"customerRef": "random"}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_32 - Send requests with the valid random customerRef values and the serious bearing defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid randome customerRef values and
    ...     the serious defect data then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the customerRef has correct value with the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious bearing defect dataset with only required body params
    ...                             and a random string of the "customerRef" in body parameters.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"customerRef": "random"}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_33 - Send requests with the valid deviceType values
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid deviceType values and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the deviceType has correct value.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and the deviceType = "OTHER".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of deviceType values:
    ...                             "AW_3", "AW_5", "DTECTX1", "PROCHECK", "PROLINK", "SMARTCHECK".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${DEVICE_TYPE}       IN      @{DEVICE_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"deviceType": "${DEVICE_TYPE}"}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_34 - Send requests with the valid deviceType values and the incipient bearing defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid deviceType values and the incipient defect data
    ...     then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the deviceType has correct value with the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient bearing defect dataset with only required body params and
    ...                             the deviceType = "OTHER".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of deviceType values:
    ...                             "AW_3", "AW_5", "DTECTX1", "PROCHECK", "PROLINK", "SMARTCHECK".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${DEVICE_TYPE}       IN      @{DEVICE_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "incipient" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"deviceType": "${DEVICE_TYPE}"}'
        Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_35 - Send requests with the valid deviceType values and the advanced bearing defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid deviceType values and the advanced defect data
    ...     then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the deviceType has correct value with the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced bearing defect dataset with only required body params and
    ...                             the deviceType = "OTHER".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of deviceType values:
    ...                             "AW_3", "AW_5", "DTECTX1", "PROCHECK", "PROLINK", "SMARTCHECK".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${DEVICE_TYPE}       IN      @{DEVICE_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "advanced" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"deviceType": "${DEVICE_TYPE}"}'
        Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_36 - Send requests with the valid deviceType values and the serious bearing defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid deviceType values and the serious defect data
    ...     then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the deviceType has correct value with the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious bearing defect dataset with only required body params and
    ...                             the deviceType = "OTHER".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of deviceType values:
    ...                             "AW_3", "AW_5", "DTECTX1", "PROCHECK", "PROLINK", "SMARTCHECK".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${DEVICE_TYPE}       IN      @{DEVICE_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "serious" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"deviceType": "${DEVICE_TYPE}"}'
        Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_37 - Send requests with the ignoredFrequencies = null
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the ignoredFrequencies = null and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct incipient defect
    ...     and the status code 200 when the ignoredFrequencies = null.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params
    ...                             and the ignoredFrequencies = null.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the correct message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"ignoredFrequencies": null}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_38 - Send requests with the ignoredFrequencies = null with incipient defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the ignoredFrequencies = null with incipient defect data
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct incipient defect and
    ...     the status code 200 when the ignoredFrequencies = null with incipient defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with only required body params
    ...                             and the ignoredFrequencies = null.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns an incipient defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"ignoredFrequencies": null}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_39 - Send requests with the ignoredFrequencies = null with advanced defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the ignoredFrequencies = null with advanced defect data
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct incipient defect and
    ...     the status code 200 when the ignoredFrequencies = null with advanced defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with only required body params
    ...                             and the ignoredFrequencies = null.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns an advanced defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"ignoredFrequencies": null}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_40 - Send requests with the ignoredFrequencies = null with serious defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the ignoredFrequencies = null with serious defect data
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct incipient defect and
    ...     the status code 200 when the ignoredFrequencies = null with serious defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with only required body params
    ...                             and the ignoredFrequencies = null.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns an serious defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"ignoredFrequencies": null}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_41 - Send requests with the ignoredFrequencies = []
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the ignoredFrequencies = [] and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct incipient defect
    ...     and the status code 200 when the ignoredFrequencies = [].
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params
    ...                             and the ignoredFrequencies = [].
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the correct message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"ignoredFrequencies": []}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_42 - Send requests with the ignoredFrequencies = [] with incipient defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the ignoredFrequencies = [] with incipient defect data
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct incipient defect
    ...     and the status code 200 when the ignoredFrequencies = [] with incipient defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with only required body params
    ...                             and the ignoredFrequencies = [].
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns an incipient defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"ignoredFrequencies": []}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_43 - Send requests with the ignoredFrequencies = [] with advanced defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the ignoredFrequencies = [] with advanced defect data
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct incipient defect
    ...     and the status code 200 when the ignoredFrequencies = [] with advanced defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with only required body params
    ...                             and the ignoredFrequencies = [].
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns an advanced defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"ignoredFrequencies": []}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_44 - Send requests with the ignoredFrequencies = [] with serious defect data
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the ignoredFrequencies = [] with serious defect data
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct incipient defect
    ...     and the status code 200 when the ignoredFrequencies = [] with serious defect data.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with only required body params
    ...                             and the ignoredFrequencies = [].
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns an serious defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"ignoredFrequencies": []}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_45 - Send requests with the valid value of frequency and speedDependent = true
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests withthe valid value of frequency and speedDependent = true
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the valid value of frequency and speedDependent = true.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and
    ...                             the valid value of  frequency and speedDependent = true.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the correct message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"ignoredFrequencies": [{"frequency": "random_float", "speedDependent": true}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_46 - Send requests with the valid value of frequency and speedDependent = false
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests withthe valid value of frequency and speedDependent = false
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the valid value of frequency and speedDependent = false.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and
    ...                             the valid value of  frequency and speedDependent = false.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the correct message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"ignoredFrequencies": [{"frequency": "random_float", "speedDependent": false}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_47 - Send requests with the valid isoClass values
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid isoClass values and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the isoClass has correct value.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and the isoClass = "UNKNOWN".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of isoClass values: "I_SMALL_MACHINES",
    ...                             "II_MEDIUM_MACHINES_RIGID", "II_MEDIUM_MACHINES_ELASTIC", "III_LARGE_MACHINES_RIGID",
    ...                             "IV_LARGE_MACHINES_ELASTIC ".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${ISO_CLASS}       IN      @{ISO_CLASS}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"isoClass": "${ISO_CLASS}"}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_48 - Send requests with the valid isoClass values and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid isoClass values and the incipient bearing defect dataset
    ...     then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200
    ...     when the isoClass has correct value with the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with only required body params and the isoClass = "UNKNOWN".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of isoClass values: "I_SMALL_MACHINES",
    ...                             "II_MEDIUM_MACHINES_RIGID", "II_MEDIUM_MACHINES_ELASTIC", "III_LARGE_MACHINES_RIGID",
    ...                             "IV_LARGE_MACHINES_ELASTIC ".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${ISO_CLASS}       IN      @{ISO_CLASS}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "incipient" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"isoClass": "${ISO_CLASS}"}'
        Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_49 - Send requests with the valid isoClass values and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid isoClass values and the advanced bearing defect dataset
    ...     then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200
    ...     when the isoClass has correct value with the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with only required body params and the isoClass = "UNKNOWN".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of isoClass values: "I_SMALL_MACHINES",
    ...                             "II_MEDIUM_MACHINES_RIGID", "II_MEDIUM_MACHINES_ELASTIC", "III_LARGE_MACHINES_RIGID",
    ...                             "IV_LARGE_MACHINES_ELASTIC ".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${ISO_CLASS}       IN      @{ISO_CLASS}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "advanced" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"isoClass": "${ISO_CLASS}"}'
        Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_50 - Send requests with the valid isoClass values and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid isoClass values and the serious bearing defect dataset
    ...     then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200
    ...     when the isoClass has correct value with the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with only required body params and the isoClass = "UNKNOWN".
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of isoClass values: "I_SMALL_MACHINES",
    ...                             "II_MEDIUM_MACHINES_RIGID", "II_MEDIUM_MACHINES_ELASTIC", "III_LARGE_MACHINES_RIGID",
    ...                             "IV_LARGE_MACHINES_ELASTIC ".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${ISO_CLASS}       IN      @{ISO_CLASS}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "serious" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"isoClass": "${ISO_CLASS}"}'
        Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_51 - Send requests with the variant length of random strings of statisticsHistory values
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the variant length of random strings of
    ...     statisticsHistory values and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns
    ...     the correct message and the status code 200 when the statisticsHistory has correct value.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and
    ...                             the statisticsHistory value is a random string.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the correct message and generate new history.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"statisticsHistory": "random"}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_52 - Send requests with the variant length of random strings of statisticsHistory values and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the variant length of random strings of statisticsHistory values and
    ...     the incipient bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the statisticsHistory has correct value with the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with only required body params and
    ...                             the statisticsHistory value is a random string.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"statisticsHistory": "random"}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_53 - Send requests with the variant length of random strings of statisticsHistory values and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the variant length of random strings of statisticsHistory values and
    ...     the advanced bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the statisticsHistory has correct value with the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with only required body params and
    ...                             the statisticsHistory value is a random string.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"statisticsHistory": "random"}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_54 - Send requests with the variant length of random strings of statisticsHistory values and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the variant length of random strings of statisticsHistory values and
    ...     the serious bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the statisticsHistory has correct value with the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with only required body params and
    ...                             the statisticsHistory value is a random string.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"statisticsHistory": "random"}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_55 - Send requests with the variant valid values of the statisticsType
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the variant valid values of the statisticsType
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the statisticsType has correct value.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with only required body params and the statisticsType = "AUTO".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of statisticsType values:
    ...                             "COUNTER", "BINOMIAL", "BAYESIAN", "NONE".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${STATISTIC_TYPE}       IN      @{STATISTIC_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"statisticsType": "${STATISTIC_TYPE}"}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_56 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalBase
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] with
    ...     the variant valid values of signalBase and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the requestedAnalyses = ["CHARACVALUES"] and the signalBase has correct values.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with the requestedAnalyses = ["CHARACVALUES"] and
    ...                             the signalBase = TIME.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of signalBase values: "ANGLE", "DISTANCE".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_BASE}       IN      @{SIGNAL_BASE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalBase": "${SIGNAL_BASE}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_57 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalDomain
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] with
    ...     the variant valid values of signalDomain and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the requestedAnalyses = ["CHARACVALUES"] and the signalDomain has correct values.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with the requestedAnalyses = ["CHARACVALUES"] and
    ...                             the signalDomain = BASE.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of signalDomain values: "FFT", "CEPSTRUM".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_DOMAIN}       IN      @{SIGNAL_DOMAIN}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalDomain": "${SIGNAL_DOMAIN}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_58 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalKind
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] with
    ...     the variant valid values of signalKind and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the requestedAnalyses = ["CHARACVALUES"] and the signalKind has correct values.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with the requestedAnalyses = ["CHARACVALUES"] and
    ...                             the signalKind = ACCELERATION.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of signalKind values: "VELOCITY", "DISPLACEMENT".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_KIND}       IN      @{SIGNAL_KIND}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalKind": "${SIGNAL_KIND}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_59 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalType
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] with
    ...     the variant valid values of signalType and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message
    ...     and the status code 200 when the requestedAnalyses = ["CHARACVALUES"] and the signalType has correct values.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with the requestedAnalyses = ["CHARACVALUES"] and
    ...                             the signalType = RAW.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with signalType = DEMODULATED.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_TYPE}       IN      @{SIGNAL_TYPE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalType": "${SIGNAL_TYPE}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_60 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalUnit
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] with
    ...     the variant valid values of signalUnit and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["CHARACVALUES"] and the signalUnit has correct values.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with the requestedAnalyses = ["CHARACVALUES"] and the signalUnit = G.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of signalUnit values:
    ...                             "METER_PER_SQUARE_SECOND", "METER_PER_SECOND", "MILLIMETER_PER_SECOND",
    ...                             "METER", "MILLIMETER", "MICROMETER".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_UNIT}       IN      @{SIGNAL_UNIT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalUnit": "${SIGNAL_UNIT}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_61 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalUnit and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] with the variant valid values of signalUnit
    ...     and the incipient bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["CHARACVALUES"] with the signalUnit has correct values and the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with the requestedAnalyses = ["CHARACVALUES"] and the signalUnit = G.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of signalUnit values:
    ...                             "METER_PER_SQUARE_SECOND", "METER_PER_SECOND", "MILLIMETER_PER_SECOND",
    ...                             "METER", "MILLIMETER", "MICROMETER".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_UNIT}       IN      @{SIGNAL_UNIT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "incipient" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalUnit": "${SIGNAL_UNIT}"}]}'
        Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_62 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalUnit and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] with the variant valid values of signalUnit
    ...     and the advanced bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["CHARACVALUES"] with the signalUnit has correct values and the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with the requestedAnalyses = ["CHARACVALUES"] and the signalUnit = G.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of signalUnit values:
    ...                             "METER_PER_SQUARE_SECOND", "METER_PER_SECOND", "MILLIMETER_PER_SECOND",
    ...                             "METER", "MILLIMETER", "MICROMETER".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_UNIT}       IN      @{SIGNAL_UNIT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "advanced" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalUnit": "${SIGNAL_UNIT}"}]}'
        Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_63 - Send requests with the requestedAnalyses = |"CHARACVALUES"| with the variant valid values of signalUnit and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["CHARACVALUES"] with the variant valid values of signalUnit
    ...     and the serious bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["CHARACVALUES"] with the signalUnit has correct values and the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with the requestedAnalyses = ["CHARACVALUES"] and the signalUnit = G.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with variants of signalUnit values:
    ...                             "METER_PER_SQUARE_SECOND", "METER_PER_SECOND", "MILLIMETER_PER_SECOND",
    ...                             "METER", "MILLIMETER", "MICROMETER".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_UNIT}       IN      @{SIGNAL_UNIT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "serious" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalUnit": "${SIGNAL_UNIT}"}]}'
        Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_64 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the variant valid values of signalBase
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the variant valid values of signalBase
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB"] and the signalBase has correct values.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with the requestedAnalyses = ["BEARING", "HSB"] and the signalBase = TIME.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with the signalBase = ANGLE.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_BASE}       IN                 TIME              ANGLE
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "HSB", "replace"], "timesignals": [{"signalBase": "${SIGNAL_BASE}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_65 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the variant valid values of signalBase and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the variant valid values of signalBase and
    ...     the incipient bearing defect data set then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB"] with the signalBase has correct values and the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with the requestedAnalyses = ["BEARING", "HSB"] and the signalBase = TIME.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with the signalBase = ANGLE.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_BASE}       IN                 TIME              ANGLE
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "incipient" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalBase": "${SIGNAL_BASE}"}]}'
        Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_66 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the variant valid values of signalBase and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the variant valid values of signalBase and
    ...     the advanced bearing defect data set then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB"] with the signalBase has correct values and the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with the requestedAnalyses = ["BEARING", "HSB"] and the signalBase = TIME.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with the signalBase = ANGLE.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 6/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_BASE}       IN                 TIME              ANGLE
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "advanced" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalBase": "${SIGNAL_BASE}"}]}'
        Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_67 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the variant valid values of signalBase and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the variant valid values of signalBase and
    ...     the serious bearing defect data set then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB"] with the signalBase has correct values and the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with the requestedAnalyses = ["BEARING", "HSB"] and the signalBase = TIME.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat Step 3 and 4 with the signalBase = ANGLE.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_BASE}       IN                 TIME              ANGLE
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "serious" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalBase": "${SIGNAL_BASE}"}]}'
        Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_68 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalDomain = "BASE"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the signalDomain = "BASE"
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200
    ...     when the requestedAnalyses = ["BEARING", "HSB"] and the  signalDomain = "BASE".
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with the requestedAnalyses = ["BEARING", "HSB"] and the signalDomain = BASE.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "HSB", "replace"], "timesignals": [{"signalDomain": "BASE"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_69 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalDomain = "BASE" and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the signalDomain = "BASE" and
    ...     the incipient bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB"] with the signalDomain = "BASE"and the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with the requestedAnalyses = ["BEARING", "HSB"] and the signalDomain = BASE.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalDomain": "BASE"}]}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_70 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalDomain = "BASE" and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the signalDomain = "BASE" and
    ...     the advanced bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB"] with the signalDomain = "BASE"and the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with the requestedAnalyses = ["BEARING", "HSB"] and the signalDomain = BASE.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalDomain": "BASE"}]}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_71 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalDomain = "BASE" and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the signalDomain = "BASE" and
    ...     the serious bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB"] with the signalDomain = "BASE"and the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with the requestedAnalyses = ["BEARING", "HSB"] and the signalDomain = BASE.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalDomain": "BASE"}]}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_72 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalKind = "ACCELERATION"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the signalKind = "ACCELERATION"
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200
    ...     when the requestedAnalyses = ["BEARING", "HSB"] and the signalKind = "ACCELERATION".
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid dataset with the requestedAnalyses = ["BEARING", "HSB"] and the signalKind = ACCELERATION.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "HSB", "replace"], "timesignals": [{"signalKind": "ACCELERATION"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_73 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalKind = "ACCELERATION" and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the  signalKind = "ACCELERATION" and
    ...     the incipient bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200
    ...     when the requestedAnalyses = ["BEARING", "HSB"] with the signalKind = "ACCELERATION" and the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with the requestedAnalyses = ["BEARING", "HSB"]
    ...                             and the signalKind = ACCELERATION.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "incipient" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalKind": "ACCELERATION"}]}'
    Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_74 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalKind = "ACCELERATION" and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the  signalKind = "ACCELERATION" and
    ...     the advanced bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200
    ...     when the requestedAnalyses = ["BEARING", "HSB"] with the signalKind = "ACCELERATION" and the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with the requestedAnalyses = ["BEARING", "HSB"]
    ...                             and the signalKind = ACCELERATION.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "advanced" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalKind": "ACCELERATION"}]}'
    Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_75 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| with the signalKind = "ACCELERATION" and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB"] with the  signalKind = "ACCELERATION" and
    ...     the serious bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200
    ...     when the requestedAnalyses = ["BEARING", "HSB"] with the signalKind = "ACCELERATION" and the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with the requestedAnalyses = ["BEARING", "HSB"]
    ...                             and the signalKind = ACCELERATION.
    ...                         3.  Send a POST request with the prepared dataset .
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and "serious" defect data
    When The client sends a POST request with the prepared dataset with the new updated data '{"requestedAnalyses": ["CHARACVALUES", "replace"], "timesignals": [{"signalKind": "ACCELERATION"}]}'
    Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
        And The status code should be '200'


CA_ANLYS_FUNC_76 - Send requests with the requestedAnalyses = |"BEARING", "HSB". "CHARACVALUES"| with the variant valid values of signalType
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] with
    ...     the variant valid values of signalType and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and the variant valid values of signalType.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and the signalType = RAW.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat step 2 to 4 with the signalType = DEMODULATED.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 12/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_TYPE}       IN                 RAW              DEMODULATED
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "HSB", "replace"], "timesignals": [{"signalType": "${SIGNAL_TYPE}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_77 - Send requests with the requestedAnalyses = |"BEARING", "HSB". "CHARACVALUES"| with the variant valid values of signalUnit
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] with
    ...     the variant valid values of signalUnit and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when
    ...     the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and the variant valid values of signalUnit.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and the signalUnit = G.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...                         5.  Repeat step 2 to 4 with variants of signalUnit values:
    ...                             "METER_PER_SQUARE_SECOND", "METER_PER_SECOND", "MILLIMETER_PER_SECOND", "METER", "MILLIMETER", "MICROMETER".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_UNIT}       IN      @{SIGNAL_UNIT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"timesignals": [{"signalUnit": "${SIGNAL_UNIT}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return a correct message with matching measuringPointId
            And The status code should be '200'
    END


CA_ANLYS_FUNC_78 - Send requests with the requestedAnalyses = |BEARING", "HSB". "CHARACVALUES"]|with the variant valid values of signalUnit and the incipient bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] with the variant valid values of signalUnit and
    ...     the incipient bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"]
    ...     with the variant valid values of signalUnit and the incipient bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid incipient defect dataset with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and the signalUnit = G.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat step 2 to 4 with variants of signalUnit values:
    ...                             "METER_PER_SQUARE_SECOND", "METER_PER_SECOND", "MILLIMETER_PER_SECOND", "METER", "MILLIMETER", "MICROMETER".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 1 and
    ...                             "message" = "Incipient defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 11/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_UNIT}       IN      @{SIGNAL_UNIT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "incipient" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"timesignals": [{"signalUnit": "${SIGNAL_UNIT}"}]}'
        Then The server should return a correct message with matching measuringPointId and "incipient" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_79 - Send requests with the requestedAnalyses = |BEARING", "HSB". "CHARACVALUES"]|with the variant valid values of signalUnit and the advanced bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] with the variant valid values of signalUnit and
    ...     the advanced bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"]
    ...     with the variant valid values of signalUnit and the advanced bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid advanced defect dataset with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and the signalUnit = G.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat step 2 to 4 with variants of signalUnit values:
    ...                             "METER_PER_SQUARE_SECOND", "METER_PER_SECOND", "MILLIMETER_PER_SECOND", "METER", "MILLIMETER", "MICROMETER".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 2 and
    ...                             "message" = "Advanced defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 12/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_UNIT}       IN      @{SIGNAL_UNIT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "advanced" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"timesignals": [{"signalUnit": "${SIGNAL_UNIT}"}]}'
        Then The server should return a correct message with matching measuringPointId and "advanced" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_80 - Send requests with the requestedAnalyses = |BEARING", "HSB". "CHARACVALUES"]|with the variant valid values of signalUnit and the serious bearing defect dataset
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] with the variant valid values of signalUnit and
    ...     the serious bearing defect dataset then verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and the status code 200 when the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"]
    ...     with the variant valid values of signalUnit and the serious bearing defect dataset.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid serious defect dataset with the requestedAnalyses = ["BEARING", "HSB", "CHARACVALUES"] and the signalUnit = G.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct defect message with status code 200.
    ...                         5.  Repeat step 2 to 4 with variants of signalUnit values:
    ...                             "METER_PER_SQUARE_SECOND", "METER_PER_SECOND", "MILLIMETER_PER_SECOND", "METER", "MILLIMETER", "MICROMETER".
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200
    ...                         -   the message contains defectClass = 3 and
    ...                             "message" = "Serious defect to the outer race has been detected. "
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 12/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${SIGNAL_UNIT}       IN      @{SIGNAL_UNIT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and "serious" defect data
        When The client sends a POST request with the prepared dataset with the new updated data '{"timesignals": [{"signalUnit": "${SIGNAL_UNIT}"}]}'
        Then The server should return a correct message with matching measuringPointId and "serious" in BEARING analysis
            And The status code should be '200'
    END


CA_ANLYS_FUNC_81 - Send requests with the valid valueOffset value
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid valueOffset value and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the valueOffset has correct values.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params with the valueOffset has random numerics value.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 12/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"timesignals": [{"valueOffset": "random_float"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_82 - Send requests with the valid valueScaleFactor value
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the valid valueScaleFactor value and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct message and
    ...     the status code 200 when the valueScaleFactor has correct values.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params with the valueScaleFactor has random numerics value.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 200.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 200 with the corresponding message.
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 12/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"timesignals": [{"valueScaleFactor": "random_float"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return a correct message with matching measuringPointId
        And The status code should be '200'


CA_ANLYS_FUNC_83 - Send requests with the mismatch between sampleCount and values in timesignals
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with timesignals[{'sampleCount'}] >= 512 along with mismatch in
    ...     the amount of timesignals[{'values'}] and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct error message and
    ...     the status code 400 when the timesignals[{'sampleCount'}] is mismatch with the timesignals[{'values'}].
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params,
    ...                             the timesignals[{'sampleCount'}] = 512 and the differ amount of timesignals[{'values'}] values.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct error message with status code 400.
    ...                         5.  Repeat step 3 and 4 with the timesignals[{'sampleCount'}] > 512 and the differ  amount of timesignals[{'values'}]
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message -
    ...                             "timesignal length (xxx) differs from sample count (yyy)".
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 17/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    @{AMOUNT}               Create List                 512                 513
    @{VALUE}                Create List                 513                 514

    FOR     ${AMOUNT}       ${VALUE}    IN ZIP          ${AMOUNT}           ${VALUE}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"timesignals": [{"sampleCount": ${AMOUNT}, "values": "random_array_${VALUE}_float"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return the error message containing: "timesignal length (${VALUE}) differs from sample count (${AMOUNT})"
            And The status code should be '400'
    END


CA_ANLYS_FUNC_84 - Send requests with the timesignals|{"sampleCount"}| < 512
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with timesignals['sampleCount'] < 512 along with other
    ...     valid minimum required params and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct error message and
    ...     the status code 400 with the timesignals[{'sampleCount'}] < 512 in basis case.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params,
    ...                             the timesignals[{'sampleCount'}] = 511 and the corresponding amount of timesignals[{'values'}] values.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct error message with status code 400.
    ...                         5.  Repeat step 3 and 4 with the timesignals[{'sampleCount'}] < 511 and
    ...                             the corresponding amount of timesignals[{'values'}] values.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message -
    ...                             "timesignal length (sample_count) of xxx is too short. It must be at least 512 samples.".
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 17/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    @{AMOUNT}               Create List                 511                 510

    FOR     ${AMOUNT}       IN         @{AMOUNT}
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"timesignals": [{"sampleCount": ${AMOUNT}, "values": "random_array_${AMOUNT}_float"}]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return the error message containing: "timesignal length (sample_count) of ${AMOUNT} is too short. It must be at least 512 samples."
            And The status code should be '400'
    END


CA_ANLYS_FUNC_85 - Send requests with the requestedAnalyses = |"HSB"| and the signalBase = "DISTANCE"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["HSB"] and signalBase = "DISTANCE" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["HSB"] and signalBase = "DISTANCE" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["HSB"]
    ...                             and the signalBase = "DISTANCE".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message -
    ...                             "...Invalid signal data at HsbAnalysis...".
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 17/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["HSB", "replace"], "timesignals": [{"signalBase": "DISTANCE"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return the error message containing: "Invalid signal data at HsbAnalysis."
        And The status code should be '400'


CA_ANLYS_FUNC_86 - Send requests with the requestedAnalyses = |"BEARING"| and the signalBase = "DISTANCE"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["BEARING"] and signalBase = "DISTANCE" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["BEARING"] and signalBase = "DISTANCE" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["BEARING"]
    ...                             and the signalBase = "DISTANCE".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message -
    ...                             "...Invalid signal data at BearingAnalysis...".
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 17/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "replace"], "timesignals": [{"signalBase": "DISTANCE"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return the error message containing: "Invalid signal data at BearingAnalysis."
        And The status code should be '400'


CA_ANLYS_FUNC_87 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and the signalBase = "DISTANCE"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["BEARING", "HSB"] and signalBase = "DISTANCE" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["BEARING", "HSB"] and signalBase = "DISTANCE" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["BEARING", "HSB"]
    ...                             and the signalBase = "DISTANCE".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 17/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "HSB", "replace"], "timesignals": [{"signalBase": "DISTANCE"}]}'
    When The client sends a POST request with the prepared dataset
    Then The status code should be '400'


CA_ANLYS_FUNC_88 - Send requests with the requestedAnalyses = |"HSB"| and the signalDomain = "FFT" & "CEPSTRUM"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["HSB"] and signalDomain = "FFT" & "CEPSTRUM" along with
    ...     other valid minimum required params and verify the server response
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["HSB"] and signalDomain = "FFT" & "CEPSTRUM" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["HSB"]
    ...                             and the signalDomain = "FFT".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...                         5. Repeat step 3 and 4 with the signalDomain = "CEPSTRUM"
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 30/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${DOMAIN}       IN         FFT      CEPSTRUM
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["HSB", "replace"], "timesignals": [{"signalDomain": "${DOMAIN}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The status code should be '400'
    END


CA_ANLYS_FUNC_89 - Send requests with the requestedAnalyses = |"BEARING"| and the signalDomain = "FFT" & "CEPSTRUM"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["BEARING"] and signalDomain = "FFT" & "CEPSTRUM" along with
    ...     other valid minimum required params and verify the server response
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["BEARING"] and signalDomain = "FFT" & "CEPSTRUM" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["BEARING"]
    ...                             and the signalDomain = "FFT".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...                         5. Repeat step 3 and 4 with the signalDomain = "CEPSTRUM"
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 30/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${DOMAIN}       IN         FFT      CEPSTRUM
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "replace"], "timesignals": [{"signalDomain": "${DOMAIN}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The status code should be '400'
    END


CA_ANLYS_FUNC_90 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and the signalDomain = "FFT" & "CEPSTRUM"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["BEARING", "HSB"] and signalDomain = "FFT" & "CEPSTRUM" along with
    ...     other valid minimum required params and verify the server response
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["BEARING", "HSB"] and signalDomain = "FFT" & "CEPSTRUM" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["BEARING", "HSB"]
    ...                             and the signalDomain = "FFT".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...                         5. Repeat step 3 and 4 with the signalDomain = "CEPSTRUM"
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 30/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${DOMAIN}       IN         FFT      CEPSTRUM
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "HSB", "replace"], "timesignals": [{"signalDomain": "${DOMAIN}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The status code should be '400'
    END


CA_ANLYS_FUNC_91 - Send requests with the requestedAnalyses = |"BEARING"| and the signalKind = "VELOCITY" & "DISPLACEMENT"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["BEARING"] and signalKind = "VELOCITY" & "DISPLACEMENT" along with
    ...     other valid minimum required params and verify the server response
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["BEARING"] and signalKind = "VELOCITY" & "DISPLACEMENT" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["BEARING"]
    ...                             and the signalKind = "VELOCITY".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...                         5. Repeat step 3 and 4 with the signalKind = "DISPLACEMENT"
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 30/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${KIND}       IN         VELOCITY      DISPLACEMENT
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "replace"], "timesignals": [{"signalKind": "${KIND}"}]}'
        When The client sends a POST request with the prepared dataset
        Then The status code should be '400'
    END


CA_ANLYS_FUNC_92 - Send requests with the requestedAnalyses = |"HSB"| and the signalKind = "DISPLACEMENT"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["HSB"] and signalKind = "DISPLACEMENT" along with
    ...     other valid minimum required params and verify the server response
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["HSB"] and signalKind = "DISPLACEMENT" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["HSB"]
    ...                             and the signalKind = "DISPLACEMENT".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 30/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["HSB", "replace"], "timesignals": [{"signalKind": "DISPLACEMENT"}]}'
    When The client sends a POST request with the prepared dataset
    Then The status code should be '400'


CA_ANLYS_FUNC_93 - Send requests with the requestedAnalyses = |"BEARING", "HSB"| and the signalKind = "DISPLACEMENT"
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with requestedAnalyses = ["BEARING", "HSB"] and signalKind = "DISPLACEMENT" along with
    ...     other valid minimum required params and verify the server response
    ...
    ...                     **Objective**:
    ...                         Send requests with requestedAnalyses = ["BEARING", "HSB"] and signalKind = "DISPLACEMENT" along with
    ...     other valid minimum required params and verify the server response.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the requestedAnalyses = ["BEARING", "HSB"]
    ...                             and the signalKind = "DISPLACEMENT".
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400 with the correct error message
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 30/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"requestedAnalyses": ["BEARING", "HSB", "replace"], "timesignals": [{"signalKind": "DISPLACEMENT"}]}'
    When The client sends a POST request with the prepared dataset
    Then The status code should be '400'


CA_ANLYS_FUNC_94 - Send requests with an empty string in bearingUuid
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with an empty string in measuringPointId and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct error message and
    ...     the status code 400 when the bearingUuid is an empty string.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and an empty string in the bearingUuid.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400
    ...                         -   Message = "Validation failed for argument [0] in public..."
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 30/8/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"bearings": [{"bearingUuid": ""}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return the error message containing: "Validation failed for argument [0]"
        And The status code should be '400'


CA_ANLYS_FUNC_95 - Send requests with invalid bearingUuid string
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with invalid measuringPointId,
    ...     which does not follow the form 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' (36 chars)
    ...     and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct error message
    ...     and the status code 400 when the bearingUuid is not in valid UUID form.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the bearingUuid is not in valid UUID form.
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400
    ...                         -   Message = "JSON parse error: Cannot deserialize value of type `java.util.UUID` from String..."
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 10/9/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    Given The client has been authenticated in Condition Analyzer service
        And The client has a valid dataset with only required body params and '{"bearings": [{"bearingUuid": "random_str_with_length_36"}]}'
    When The client sends a POST request with the prepared dataset
    Then The server should return the error message containing: "JSON parse error: Cannot deserialize value of type `java.util.UUID` from String"
        And The status code should be '400'


CA_ANLYS_FUNC_96 - Send requests with the zero and the negative value of the cageFrequency when BEARING in requestedAnalyses
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the zero and the negative value of the cageFrequency
    ...     when BEARING in requestedAnalyses and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct error message
    ...     and the status code 400 when the cageFrequency is zero or nagative and BEARING in requestedAnalyses.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the "cageFrequency" = 0,
    ...                             the requestedAnalyses = ["BEARING"]
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...                         5.  Repeat step 3 and 4 with a random negative value of the "cageFrequency"
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400
    ...                         -   Message = "The bearing data input is implausible..."
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 10/9/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${frez}       IN         0      "random_float_-100.00_-0.001"
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"bearings": [{"cageFrequency": ${frez}}], "requestedAnalyses": ["BEARING", "replace"]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return the error message containing: "The bearing data input is implausible"
            And The status code should be '400'
    END


CA_ANLYS_FUNC_97 - Send requests with the zero and the negative value of the innerRacewayFrequency when BEARING in requestedAnalyses
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the zero and the negative value of the innerRacewayFrequency
    ...     when BEARING in requestedAnalyses and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct error message
    ...     and the status code 400 when the innerRacewayFrequency is zero or nagative and BEARING in requestedAnalyses.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the "innerRacewayFrequency" = 0,
    ...                             the requestedAnalyses = ["BEARING"]
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...                         5.  Repeat step 3 and 4 with a random negative value of the "innerRacewayFrequency"
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400
    ...                         -   Message = "The bearing data input is implausible..."
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 10/9/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${frez}       IN         0      "random_float_-100.00_-0.001"
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"bearings": [{"innerRacewayFrequency": ${frez}}], "requestedAnalyses": ["BEARING", "replace"]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return the error message containing: "The bearing data input is implausible"
            And The status code should be '400'
    END


CA_ANLYS_FUNC_98 - Send requests with the zero and the negative value of the twiceRollerFrequency when BEARING in requestedAnalyses
    [Documentation]
    ...
    ...                     **Description**:
    ...                         Send requests with the zero and the negative value of the twiceRollerFrequency
    ...     when BEARING in requestedAnalyses and verify the server response.
    ...
    ...                     **Objective**:
    ...                         Verify that the /vibrationSignal/analysis returns the correct error message
    ...     and the status code 400 when the twiceRollerFrequency is zero or nagative and BEARING in requestedAnalyses.
    ...
    ...                     **Procedure**:
    ...                         1.  Get an access token and make sure it's alive.
    ...                         2.  Prepare a valid data set with only required body params and the "twiceRollerFrequency" = 0,
    ...                             the requestedAnalyses = ["BEARING"]
    ...                         3.  Send a POST request with the prepared dataset.
    ...                         4.  Verify that the server returns a correct message with status code 400.
    ...                         5.  Repeat step 3 and 4 with a random negative value of the "twiceRollerFrequency"
    ...
    ...                     **Expected results**:
    ...                         -   The server returns the status code 400
    ...                         -   Message = "The bearing data input is implausible..."
    ...
    ...                     **Author**: Tai Thai
    ...                     **Reviewer**: N/A
    ...                     **Created date**: 10/9/2021
    ...
    ...                     **REQ**: N/A

    [Tags]                  level=Integration
    ...                     min_version=1.0.0
    ...                     max_version=None
    ...                     mode=auto
    ...                     epic: Condition Analyzer
    ...                     feature: Vibration Signal
    ...                     story: Analysis

    FOR     ${frez}       IN         0      "random_float_-100.00_-0.001"
        Given The client has been authenticated in Condition Analyzer service
            And The client has a valid dataset with only required body params and '{"bearings": [{"twiceRollerFrequency": ${frez}}], "requestedAnalyses": ["BEARING", "replace"]}'
        When The client sends a POST request with the prepared dataset
        Then The server should return the error message containing: "The bearing data input is implausible"
            And The status code should be '400'
    END