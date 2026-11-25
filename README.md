# Databricks

## Exemplos de CSV e JSON

Use um ambiente Databricks com acesso a um volume do Unity Catalog. Para executar o trecho em Scala, use computação que ofereça suporte a essa linguagem.

1. Copie o conteúdo da pasta [amostras](amostras/) para o volume, mantendo a pasta events. Os registros são fictícios.
2. Importe o notebook CSV ou JSON. Rode a primeira célula de código para criar o widget volume_dir, informe o caminho do volume no formato /Volumes/catalogo/esquema/volume e execute as células restantes em ordem.
3. O notebook JSON grava o resultado em uma pasta por execução dentro de saida. Para essa atividade, use um volume com permissão de escrita.
