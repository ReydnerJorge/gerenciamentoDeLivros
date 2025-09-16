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
        @livro.each_with_index do |livro, index|
            puts "#{index + 1}. #{ilivro}"
        end
    end

# Buscar livros por autor
    def buscar_por_autor(autor)
        @livros.select { |livro| livro.autor.downcase.include?(autor.downcase) }
    end

# Calcular valor total da biblioteca