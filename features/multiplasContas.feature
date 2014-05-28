Feature: Executa multiplas operaçoes

  Scenario Outline: Adiciona varios numeros separados por virgula
    Given a entrada "<input>"
    When a calculadora e executada
    Then a saida e "<output>"

  Examples:
  |input|output|
  |2+2,3+3,4+4    |4,6,8|
  |98+1,10/5,33-1 |99,2,32|