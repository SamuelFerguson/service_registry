# Created by Tymoteusz Paul at 18/01/2016
Feature: ServiceRegistry add service
As a service_registry API user(service), I want to be able to add services to the registry, So that new services can register themselvs
and so that other services can find them.

    Scenario Outline: Add service
    Given an empty service registry
    When I add a service "<service>" with version "<version>"
    Then I should be notified with a change "<change>" and a unique service identifier "<id>"
    Examples:
      | service | version | change  | id|
      | test    | 0.0.1   | created | 1 |
      | test    | 0.0.1   | created | 2 |
      | test    | 0.0.2   | created | 3 |
      | test    | 0.0.2   | created | 4 |
      | test2   | 0.0.2   | created | 5 |
      | test2   | 0.0.2   | created | 6 |


 
