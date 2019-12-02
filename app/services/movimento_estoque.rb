class MovimentoEstoqueService

    def self.comprar(movimento)
        new(movimento).comprar
    end

    def self.vender(movimento)
        new(movimento).vender
    end

    def self.devolver_compra(movimento)
        new(movimento).devolver_compra
    end

    def self.devolver_venda(movimento)
        new(movimento).devolver_venda
    end

    def initialize(movimento)
        @data = movimento.data
        @quantidade = movimento.quantidade
        @pessoa = movimento.pessoa
        @operacao = movimento.operacao
        @produto = movimento.produto
    end

    def comprar
        self.cria_movimento
    end

    def vender
        estoque = MovimentoEstoque.por_operacao(@produto, Date.today, 2) +
                  MovimentoEstoque.por_operacao(@produto, Date.today, 3) - 

        self.processa_quantidade(estoque)
    end


    def devolver_compra
        estoque = MovimentoEstoque.por_operacao(@produto, Date.today, 2) 

        self.processa_quantidade(estoque)
    end

    def devolver_venda
        estoque = MovimentoEstoque.por_operacao(@produto, Date.today, 1) 

        self.processa_quantidade(estoque)
    end


    def novo_movimento
        MovimentoEstoque.create(pessoa: @pessoa,
                         operacao: @operacao,
                         data: @data,
                         quantidade: @quantidade,
                         produto: @produto)
    end

    def processa_quantidade(estoque)
        estoque = 50
        if estoque >= @quantidade
            self.novo_movimento
        else
            raise StandardError, 'Quantidade de produtos nao pode ser maior do que o estoque'
        end
    end
end