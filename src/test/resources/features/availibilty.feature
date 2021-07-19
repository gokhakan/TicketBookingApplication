Feature: Checking flights


  Background: : Going to Flight Booking App
    Given I am on SkyScanner login page



  Scenario Outline: Available flights
  When I search for direct flight from <location 1> and <location 2>  to London
  Then Flights are available message should appear
    Examples:
      | location 1  |  | location 2 |
      | Humberside |  | Liverpool  |
      | Manchester |  | Doncaster  |
      | Bristol    |  | Birmingham |

  @wip
  Scenario Outline: Available seats
    When I search for direct flights from <location 3>  to New York with <cost> , <class>, <date> and <airline>
    Then Window seat is available message should appear
    Examples:
      | location 3 |  | cost |  | class    |  | date          |  | airline         |
      | London     |  | 500  |  | Economy  |  | 1 August 2021 |  | British Airways |
      | Paris      |  | 600  |  | Business |  | 2 August 2021 |  | Air France      |
      | Berlin     |  | 700  |  | Economy  |  | 3 August 2021 |  | Lufthansa       |





