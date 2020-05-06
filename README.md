# Iugu | Teste de Lógica

## Primeiro:

Escreva um algoritmo (em qualquer linguagem) que resolva a seguinte questão: Paulo trabalha na recepção de uma empresa agenciadora de matrimônios, ele faz a primeira triagem das pessoas que procuram a agência e as encaminha para determinada sala de atendimento, dependendo da idade da pessoa. Até 25 anos, dois meses e 15 dias: sala 1, de 25 anos, 2 meses e 16 dias até 45 anos e 1 mês: sala 2, de 45 anos,1 mês e 1 dia até 65 anos: sala 3, mais velhos que isto na sala 4.

Faça um algoritmo que dada a data de nascimento descubra a sala correta.

## run:

```
1º docker build -t logical-test .
```

```
2º sudo docker run --rm logical-test:latest ruby choose_room.rb "04/12/1983"
```

--------------------------------------------------------------------------------

## Segundo:

Escreva um algoritmo (em qualquer linguagem) que resolva a seguinte questão: Um professor citou as seguintes definições:

1. Número esotérico é todo número inteiro divisível por 3 e 5
2. Número cético é todo número inteiro que não é esotérico
3. Número primo é todo número inteiro divisível somente por 1 e ele mesmo

Faça um algoritmo que dado um número inteiro descubra se ele é Esotérico, Cético e/ou Primo

## run:

```
1º docker build -t logical-test .
```

```
2º sudo docker run --rm logical-test:latest ruby number_analyse.rb 15
```

--------------------------------------------------------------------------------

## Terceiro:

Considere como verdadeiras as seguintes afirmações:

- Algumas pessoas são inescrupulosas
- Os inescrupulosos são sempre amarelos ou verdes
- Todo nervoso é vermelho
- As baleias são verdes
- Os rinocerontes são amarelos
- Todas as pessoas são nervosas

### Assinale com (V)erdadeiro ou (F)also.

( **F** ) Todas as pessoas nervosas são inescrupulosas

( **V** ) Se uma pessoa é verde ou amarela então ela é inescrupulosa

( **F** ) As baleias são inescrupulosas

( **F** ) Todas as pessoas são vermelhas

( **F** ) Os rinocerontes são sempre inescrupulosos

( **F** ) Os inescrupulosos são sempre pessoas ou baleias ou rinocerontes

( **V** ) Se uma pessoa é inescrupulosa então ela é verde ou amarela

( **V** ) Se algo é azul ou preto então este algo não é baleia, nem é nervoso e nem é rinoceronte
