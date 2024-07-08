    // Expande as tabelas agrupadas para incluir todas as colunas da tabela original
    expandido_tuplas_agrupadas_data_mais_recente_primeiro = 
        Table.ExpandTableColumn(
            tuplas_agrupadas_e_classificadas_por_linha, 
            "tuplas_agrupadas", 
            // Remove da lista de nomes das colunas agrupadas, as colunas que não foram agrupadas, expandindo todas dinamicamente
            List.RemoveItems(
                Table.ColumnNames(
                    tuplas_agrupadas_e_classificadas_por_linha[tuplas_agrupadas]{0}
                ),
                Table.ColumnNames(
                    tuplas_agrupadas_e_classificadas_por_linha
                )
            )
        ),
