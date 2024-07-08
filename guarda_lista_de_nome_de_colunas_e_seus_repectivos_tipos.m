    // Lista de colunas e tipos armazenados para reaplicar em caso de perda dos tipos
    var_lista_tipo_dados = 
        List.Transform(
            // Coloca os nomes das coluna em uma sub-lista, na posicao 0 da sub-lista
            Table.ColumnNames(
                tuplas_filtradas_removido_respostas_para_linhas_sem_cobrador
            ),
            // Coloca o tipo das colunas baseado em uma tupla não vazia, na posição 1 da sub-lista
            each 
            {
                _, 
                Value.Type(
                    List.First(
                        List.Select(
                            Table.Column(
                                tuplas_filtradas_removido_respostas_para_linhas_sem_cobrador,
                                 _
                            ), 
                            each _ <> null
                        )
                    )
                )
            }
        ),
