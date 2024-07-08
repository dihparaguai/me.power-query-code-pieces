    // Expande as tabelas agrupadas para incluir todas as colunas da tabela original
    // Expand grouped tables to include all columns from the original table
    expandido_tuplas_agrupadas_data_mais_recente_primeiro = 
        Table.ExpandTableColumn(
            tuplas_agrupadas_e_classificadas_por_linha, 
            "tuplas_agrupadas", 
            List.RemoveItems(
                Table.ColumnNames(
                    tuplas_agrupadas_e_classificadas_por_linha[tuplas_agrupadas]{0}
                ),
                Table.ColumnNames(
                    tuplas_agrupadas_e_classificadas_por_linha
                )
            )
        ),
