@verify
@verify3
@broker
Feature: Cartridge Lifecycle Python Verification Tests
  Scenario Outline: Application Creation
    Given the libra client tools
    And an accepted node
    When <app_count> <type> applications are created
    Then the applications should be accessible

  Scenarios: Application Creation Scenarios
    | app_count |     type     |
    |     1     |  python-2.6  |

  Scenario Outline: Application Modification
    Given an existing <type> application
    When the application is changed
    Then it should be updated successfully
    And the application should be accessible

  Scenarios: Application Modification Scenarios
    |      type     |
    |   python-2.6  |

  Scenario Outline: Application Stopping
    Given an existing <type> application
    When the application is stopped
    Then the application should not be accessible

  Scenarios: Application Stopping Scenarios
    |      type     |
    |   python-2.6  |

  Scenario Outline: Application Starting
    Given an existing <type> application
    When the application is started
    Then the application should be accessible

  Scenarios: Application Starting Scenarios
    |      type     |
    |   python-2.6  |
    
  Scenario Outline: Application Restarting
    Given an existing <type> application
    When the application is restarted
    Then the application should be accessible

  Scenarios: Application Restart Scenarios
    |      type     |
    |   python-2.6  |

  Scenario Outline: Application Destroying
    Given an existing <type> application
    When the application is destroyed
    Then the application should not be accessible

  Scenarios: Application Destroying Scenarios
    |      type     |
    |   python-2.6  |