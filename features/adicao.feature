Feature: Executa uma operação

  Scenario Outline: Adiciona dois numeros
    Given a entrada "<input>"
    When a calculadora e executada
    Then a saida e "<output>"

  Examples:
  |input|output|
  |2+2  | 4    |
  |98+1 | 99   |
  |98+2 | 100  |
  |2/0  | !!!  |


