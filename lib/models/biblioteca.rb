# Classe Biblioteca que gerencia uma coleção de livros
class Biblioteca
    def initialize
        @livros = []
    end

    # Adicionar livro a biblioteca
    def adicionar_livro(livro)
        @livros << livro
    end

    # Listar todos os livros
    def listar_livros(livro)
        @livros.each_with_index do |livro, index|
            puts "#{index + 1}. #{livro}"
        end
    end

    # Buscar livros por autor
    def buscar_por_autor(autor)
        @livros.select { |livro| livro.autor.downcase.include?(autor.downcase) }
    end

    # Calcular valor total da biblioteca
    def valor_total
        @livros.sum { |livro| livro.preco}
    end

    # Encontrar livro mais caro
    def livro_mais_caro
        @livros.max.by { |livro| livro.preco}
    end
end
