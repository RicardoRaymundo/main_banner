Material Grid

[![use-pattern][use-pattern-badge-url]][use-pattern-url]
[![angular][angular-badge-url]][angular-url]
[![npm][npm-badge-url]][npm-url]
[![github][github-badge-url]][github-url]


# @use-pattern/grid-layout
Grid-Layout contém estilos css para desenvolvimento de layouts responsivos seguindo os padrões do Material Design adapta-se ao tamanho e orientação da tela, garantindo a consistência nos layouts.

Inspirado orinalmente em [material-responsive-grid](https://github.com/STORIS/material-responsive-grid).

## Conteúdo
1. [Instalar](#instalar)
2. [Utilizar](#utilizar)
3. [Aprender](#aprender)
4. [Contribuir](#contribuir)

# Instalar

Instale a partir do [npm](https://www.npmjs.com/package/@use-pattern/grid-layout):

```bash
npm install @use-pattern/grid-layout --save
```

## Utilizar

- `npm` — para instalar [@use-pattern/grid-layout](https://www.npmjs.com/package/@use-pattern/grid-layout)
- `github` — para fazer download do [código fonte](https://github.com/use-pattern/grid-layout)

## Aprender
### src/styles.scss
Inclua o arquivo styles.css em seu arquivo de estilo sass
```css
@import "~@use-pattern/grid-layout/styles.css";
```

#### Sistema de Grid
Existem três elementos básicos que compõem um sistema de grid: grids, rows, e columns.

 - As linhas (rows) devem ser inseridas dentro de uma grid.
 - As colunas (columens) devem ser inseridas dentro de uma linha (row).
 
#### Breakpoints
Este sistema de grid suporta seis tamanhos de tela:

| Classe   | Tela            | Colunas | Breakpoint  | Margins Gutters* |
| :------: | :-------------: | :-----: | :---------: | :--------------: |
| **xs**   | xsmall          | 12      | 0 ~ 359     | 16               |
| **xsm**  | xsmall medium   | 12      | 360 ~ 399   | 16               |
| **xsb**  | xsmall big      | 12      | 400 ~ 599   | 16               |
| **sm**   | small           | 12      | 600 ~ 839   | 16               |
| **smm**  | small medium    | 12      | 840 ~ 959   | 24               |
| **smb**  | small big       | 12      | 960 ~ 1023  | 24               |
| **md**   | medium          | 12      | 1024 ~ 1279 | 24               |
| **mdm**  | medium medium   | 12      | 1280 ~ 1439 | 24               |
| **lg**   | large           | 12      | 1440 ~ 1599 | 24               |
| **lgm**  | large medium    | 12      | 1600 ~ 1919 | 24               |
| **xl**   | xlarge          | 12      | 1920 +      | 24               |

-* As margens e gutters são flexíveis e não precisam ser do mesmo tamanho.

Isso segue a recomendação do Google para breakpoints de interrupção responsivos da interface do usuário :

 - Com exceção dos três primeiros, os tamanhos de tela têm 12 colunas.
 - O espaço entre as colunas (gutter) é 16px ou 24px. Um espaço (gutter) de 24px é aplicada quando as duas dimensões da tela são maiores ou iguais a 600 px.
 - As grids preencherão a viewport até 1600 px. Nesse ponto, a grid pode: continuar a preencher a janela de visualização ou permanecer com 1600 pixels de largura (alinhado à esquerda ou centralizado).
 
#### Grids 

As grids têm as seguintes classes:

- **.use-grid** - O elemento principal que contém linhas. Ele tem uma margem aplicada que absorverá as margens esquerda e direita negativas da linha.
- **.marginless** - Elimina o preenchimento externo que impede que o conteúdo de uma linha seja estendido de um lado a outro.
- **.fixed-left** - A partir de 1600px, a grid terá largura fixa e será alinhada à esquerda na viewport.
- **.fixed-center** - A partir de 1600px, a grid terá largura fixa e será centralizada horizontalmente na viewport.

O comportamento padrão de uma grid será preencher a viewport e preservar o preenchimento externo nas colunas adjacentes à borda.

#### Linhas (Rows) 

As linhas devem estar dentro de uma grid e ter as seguintes classes:

**{size}** = xs, xsm, xsb, sm, smm, smb, md, mdm, lg, lgm, xl

- **.use-row** - O elemento que contém colunas. Ele usa uma margem negativa que nega a calha externa da primeira e da última colunas.
- **.reverse** - Inverte a direção desta linha.
- **.start-{size}** - Justifica o conteúdo para o início para os tamanhos especificados (com base na direção).
- **.center-{size}** - Centraliza o conteúdo nessa linha para os tamanhos especificados.
- **.end-{size}** - Justifique o conteúdo até o final para os tamanhos especificados (com base na direção).
- **.top-{size}** - Alinhar verticalmente o conteúdo ao topo para os tamanhos especificados.
- **.middle-{size}** - Alinhe verticalmente o conteúdo ao meio para os tamanhos especificados.
- **.bottom-{size}** - Alinhe verticalmente o conteúdo ao fundo para os tamanhos especificados.
- .**around-{size}** - distribuir uniformemente o espaço não utilizado em torno das colunas para os tamanhos especificados.
- **.between-{size}** - distribui uniformemente o espaço não utilizado entre colunas para os tamanhos especificados.

#### Colunas (Columns)

As colunas devem estar dentro de uma linha (Row) e ter as seguintes classes:

**{size}** = xs, xsm, xsb, sm, smm, smb, md, mdm, lg, lgm, xl

- **.col-quarter-row** - Consome um quarto de linha para todos os tamanhos de tela
- **.col-half-row** - Consome metade de uma linha para todos os tamanhos de tela
- **.col-three-quarter-row** - Consome três quartos de uma linha para todos os tamanhos de tela
- **.col-full-row** - Consome a linha completa para todos os tamanhos de tela
- **.col-{size}-{integer, 1-max column count}** - Número de colunas a serem consumidas para um determinado tamanho de tela
- **.col-{size}-offset-{integer, 0-max column count-1}** - Número de colunas para compensar essa coluna para um tamanho de tela específico
- **.first-{size}** - Apresenta esta coluna primeiro para um tamanho de tela específico (com base na direção da linha)
- **.last-{size}** - Apresentar esta coluna por um tamanho de tela específico (com base na direção da linha)
- **.hidden-{size}-only** - Esta coluna ficará oculta para um tamanho de tela específico
- **.hidden-{size}-down** - Esta coluna ficará oculta para telas tão largas quanto ou mais estreitas que um tamanho de tela específico
- **.hidden-{size}-up** - Esta coluna ficará oculta para telas tão largas quanto ou maiores que um tamanho de tela específico
 

### src/app/app.template.html
```html
<div class="use-grid">
   <div class="use-row">
      <div class="col-xs-4 col-lg-6">
         <p>Esta coluna consome toda a linha para telas extra-pequenas,
            pequenas e médias. Para telas grandes e extragrandes, preenche metade da linha.</p>
      </div>
      <div class="hidden-md-down col-half-row">
         <p>Esta coluna não é visível para telas estra-pequenas, pequenas
            e telas médias, mas é visível para telas grandes 
            e telas extra-grandes. Preenche metade da linha.
      </div>
      <div class="hidden-sm-down hidden-up-xl col-md-12">
         <p>Esta coluna é visível apenas para telas médias e telas grandes.</p>
      </div>
      <div class="hidden-sm-only hidden-smm-only hidden-smb-only hidden-lg-only col-full-row">
         <p>Esta coluna está escondida para telas pequenas e telas grandes
            e preenche toda a linha.</p>
      </div>
   </div>
</div>
```

## Contribuir
Contibuições são sempre muito bem vindas! As contribuições não precisam serem somente através de desenvolvimentos de códigos, qualquer ajuda com ideias, sugestões, melhorias na documentação ou doações para os desenvolvedores são sempre muito apreciadas! 

Participe da comunidade [Projeto que Vale](http://www.projetoquevale.com.br) e colabore da forma que achar melhor.


## Licença
MIT License

Copyright (c) 2018 PROJETO QUE VALE

É concedida permissão, gratuitamente, a qualquer pessoa que obtenha uma cópia deste software e dos arquivos de documentação associados (o "Software"), para negociar o Software sem restrições, incluindo, sem limitação, os direitos de uso, cópia, modificação e fusão , publicar, distribuir, sublicenciar e / ou vender cópias do Software, e permitir que as pessoas a quem o Software é fornecido o façam, sujeitas às seguintes condições:

O aviso de copyright acima e este aviso de permissão devem ser incluídos em todas as cópias ou partes substanciais do Software.

O SOFTWARE É FORNECIDO "NO ESTADO EM QUE SE ENCONTRA", SEM NENHUM TIPO DE GARANTIA, EXPRESSA OU IMPLÍCITA, INCLUINDO, MAS NÃO SE LIMITANDO ÀS GARANTIAS DE COMERCIALIZAÇÃO, ADEQUAÇÃO A UM FIM ESPECÍFICO E NÃO VIOLAÇÃO. EM NENHUMA CIRCUNSTÂNCIA, OS AUTORES OU PROPRIETÁRIOS DE DIREITOS DE AUTOR PODERÃO SER RESPONSABILIZADOS POR QUAISQUER REIVINDICAÇÕES, DANOS OU OUTRAS RESPONSABILIDADES, QUER EM ACÇÃO DE CONTRATO, DELITO OU DE OUTRA FORMA, DECORRENTES DE, OU EM CONEXÃO COM O SOFTWARE OU O USO OU OUTRAS NEGOCIAÇÕES NO PROGRAMAS.



[angular-badge-url]: https://img.shields.io/badge/Angular-2%2C4%2C5%2C6-blue.svg
[angular-url]: https://angular.io

[npm-badge-url]: https://img.shields.io/badge/npm-install-red.svg
[npm-url]: https://www.npmjs.com/package/@use-pattern/grid-layout

[github-badge-url]: https://img.shields.io/badge/github-download-brightgreen.svg
[github-url]: https://www.npmjs.com/package/@use-patternt/grid-layout

[use-pattern-badge-url]: https://img.shields.io/badge/Padrão-USE-orange.svg
[use-pattern-url]: http://www.use-pattern.com/@use-pattern/grid-layout
