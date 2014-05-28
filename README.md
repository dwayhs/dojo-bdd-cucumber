dojo-bdd-cucumber
=================

Dojo realizado no GUTS-RS no dia 2014-05-26

# Instruções

* Instale ruby na sua máquina ([rvm](https://rvm.io/))
* Clone o repositório: `git clone https://github.com/dwayhs/dojo-bdd-cucumber.git`
* Acesse a pasta do repositório: `cd dojo-bdd-cucumber`
* Instale as dependências do projeto `bundle install`
* Pronto!

# Executar a calculadora

```
ruby calc.rb 1+1
ruby calc.rb 1+1,2+2
ruby calc.rb 1*1,2/2
```

# Executar os testes

```
$ cucumber
```

Você deverá ver o seguinte output na tela

```
Feature: Executa uma operação

  Scenario Outline: Adiciona dois numeros # features/adicao.feature:3
    Given a entrada "<input>"             # features/step_definitions/steps.rb:1
    When a calculadora e executada        # features/step_definitions/steps.rb:5
    Then a saida e "<output>"             # features/step_definitions/steps.rb:10

    Examples:
      | input | output |
      | 2+2   | 4      |
      | 98+1  | 99     |
      | 98+2  | 100    |
      | 2/0   | !!!    |

Feature: Executa multiplas operaçoes

  Scenario Outline: Adiciona varios numeros separados por virgula # features/multiplasContas.feature:3
    Given a entrada "<input>"                                     # features/step_definitions/steps.rb:1
    When a calculadora e executada                                # features/step_definitions/steps.rb:5
    Then a saida e "<output>"                                     # features/step_definitions/steps.rb:10

    Examples:
      | input          | output  |
      | 2+2,3+3,4+4    | 4,6,8   |
      | 98+1,10/5,33-1 | 99,2,32 |

6 scenarios (6 passed)
18 steps (18 passed)
0m0.280s
```