#classe Livro com os atributos: título, autor, ano_publicação e preço
class Livro
    attr_accessor :titulo, :autor, :ano_publicacao, :preco


    def initialize(titulo, autor, ano_publicacao, preco)
        @titulo = titulo
        @autor = autor
        @ano_publicacao = ano_publicacao
        @preco = preco
    end

    # Método para exibir informações do Livro
    def to_s
        "#{@titulo} por #{@autor} (#{@ano_publicacao}) - R$ #{@preco}"
    end

    # Método que calcula o desconto (10% se o livro for antigo)
    def preco_com_desconto
        if @ano_publicacao < 2000
            @preco * 0.9
        else
            @preco
        end
    end
end
