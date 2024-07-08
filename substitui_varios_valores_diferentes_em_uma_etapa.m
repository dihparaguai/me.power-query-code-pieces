    // Realiza transformação de valor na coluna 'resposta_unificada' mudando para 'ÓTIMO+BOM' e 'RUIM+PÉSSIMO'
    step_valor_substituido_otimo_bom_ruim_pessimo = 
        Table.TransformColumns(
            step_coluna_duplicada_resposta_unificada,
            {
                {"resposta_unificada", each 
                    let
                        // Define uma função anonima para realizar a substituição de valor
                        substituir_valor = (valor) =>
                            if valor = "4.BOM" then "ÓTIMO+BOM"
                            else if valor = "5.ÓTIMO" then "ÓTIMO+BOM"
                            else if valor = "1.PÉSSIMO" then "RUIM+PÉSSIMO"
                            else if valor = "2.RUIM" then "RUIM+PÉSSIMO"
                            else if valor = "3.REGULAR" then "REGULAR"
                            else valor
                    in
                        // Chama a função para o valor presente na linba atual
                        substituir_valor(_)
                }
            }
        ),
