# Carregar arquivos necessários
require_relative 'lib/models/livro'
require_relative 'lib/models/biblioteca'
require_relative 'lib/services/biblioteca_service'



def main
  biblioteca = Biblioteca.new
  BibliotecaSerice.carregar_livros_iniciais(biblioteca)

  loop do
    BibliotecaSerice.exibir_menu
    opcao = gets.chomp.to_i

    case opcao
    when 1
            puts "\n=== LISTA DE LIVROS ==="
      biblioteca.listar_livros
      
    when 2
      print "\nDigite o nome do autor: "
      autor = gets.chomp
      resultados = biblioteca.buscar_por_autor(autor)
      
      if resultados.any?
        puts "\nResultados da busca:"
        resultados.each { |livro| puts livro }
      else
        puts "Nenhum livro encontrado para o autor #{autor}"
      end
      
    when 3
      puts "\nValor total da biblioteca: R$ #{biblioteca.valor_total.round(2)}"
      
    when 4
      puts "\nLivro mais caro: #{biblioteca.livro_mais_caro}"
      
    when 5
      puts "\nAdicionar novo livro:"
      print "Título: "
      titulo = gets.chomp
      print "Autor: "
      autor = gets.chomp
      print "Ano de publicação: "
      ano = gets.chomp.to_i
      print "Preço: "
      preco = gets.chomp.to_f
      
      biblioteca.adicionar_livro(Livro.new(titulo, autor, ano, preco))
      puts "Livro adicionado com sucesso!"
      
    when 6
      puts "\nLivros disponíveis:"
      biblioteca.listar_livros
      print "\nDigite o número do livro a ser removido: "
      indice = gets.chomp.to_i - 1
      
      if indice >= 0 && indice < biblioteca.instance_variable_get(:@livros).size
        livro_removido = biblioteca.instance_variable_get(:@livros)[indice]
        biblioteca.remover_livro(livro_removido.titulo)
        puts "Livro '#{livro_removido.titulo}' removido com sucesso!"
      else
        puts "Índice inválido!"
      end
      
    when 7
      puts "Saindo do sistema..."
      break
      
    else
      puts "Opção inválida!"
    end
  end
end