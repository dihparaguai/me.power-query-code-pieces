    // Altera os tipos de dados de colunas específicas
    tipo_alterado_reaplicacao = 
        Table.TransformColumnTypes(
            coluna_ajustada_id_resposta_unificada_novo,
            // Seleciona da lista de tipos armazenados apenas as colunas existentes atual
            List.Select(
                var_lista_tipo_dados,
                // Seleciona cada sub-lista que contém o nome das colunas existente na posição 0
                each List.Contains(
                    Table.ColumnNames(
                        coluna_ajustada_id_resposta_unificada_novo
                    ), 
                    _{0}
                )
            )
        ),
