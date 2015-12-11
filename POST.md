Esqueleto:

#Titulo
 - As mentiras do 100% de cobertura

# Ordem

#### Mostrar o projeto scaffoldado.
#### Mostrar pequenas regras de negocio.
#### Mostrar 100% de cobertura.

```Shell
xispe@xispe:~/src/teste_shipt(master)$ rspec
................................

Finished in 0.26515 seconds (files took 1.36 seconds to load)
32 examples, 0 failures

Coverage report generated for RSpec to /home/xispe/src/teste_shipt/coverage. 45 / 45 LOC (100.0%) covered.
```

#### Mostrar problemas

- After save nao estava sendo testado.
- Helper nao estava testando todos os senarios possiveis.


#### Mostrar solução dos problemas


#### Conclusão

Concluir que apenas testes unitarios não são o bastante para garantir o comportamente esperado de todas
as regras.

Mostrar que com auto acoplamento e testes insuficiente, problemas podem estar sendo mascarados.

Soluções:

- implementar teste de comportamento.
- explicar logica de senarios binarios em TDD.
