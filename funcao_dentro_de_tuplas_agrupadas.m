    // Agrupa as linhas por id_linha, ordena por ordem de data e adiciona um índice às tabelas agrupadas
    // Group rows by id_linha, sort by date and add an index to grouped tables
    tuplas_agrupadas_e_classificadas_por_linha = 
        Table.Group(
            tuplas_filtradas_somente_dias_uteis,
            {"id_linha"},
            {
                {"tuplas_agrupadas", each 
                let
                    ordenacao = 
                        Table.Sort(
                            _, { {"data_inicial", Order.Descending} }
                        ),
                    indice = 
                        Table.AddIndexColumn(
                            ordenacao, "indice", 1, 1, Int64.Type
                        )
                in
                    indice
                }
            }
        ),
