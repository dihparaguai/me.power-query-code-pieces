    // Adiciona tuplas de resposta padrão
    step_tupla_adicionada_resposta_padrao =
        Table.InsertRows
        (
            step_duplicatas_removidas,
            // Insere as novas linhas a partir da posição inicial da tabela
            0,  
            {
                [
                    empresa = "AVUL",
                    id_pergunta_unificada = "PER#E", 
                    resposta_unificada_original = "(OUTRO)"
                ],
                [
                    empresa = "VCCL", 
                    id_pergunta_unificada = "PER#E", 
                    resposta_unificada_original = "(OUTRO)"
                ],
                [
                    empresa = "VSBL", 
                    id_pergunta_unificada = "PER#E", 
                    resposta_unificada_original = "(OUTRO)"
                ],
                [
                    empresa = "GATO PRETO", 
                    id_pergunta_unificada = "PER#E", 
                    resposta_unificada_original = "(OUTRO)"
                ]
            }
        ),
