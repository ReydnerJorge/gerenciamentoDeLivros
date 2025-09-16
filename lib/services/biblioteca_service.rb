class BibliotecaService
  def self.carregar_livros_iniciais(biblioteca)
    biblioteca.adicionar_livro(Livro.new("Dom Casmurro", "Machado de Assis", 1899, 45.90))
    biblioteca.adicionar_livro(Livro.new("1984", "George Orwell", 1949, 39.90))
    biblioteca.adicionar_livro(Livro.new("O Hobbit", "J.R.R. Tolkien", 1937, 59.90))
    biblioteca.adicionar_livro(Livro.new("Clean Code", "Robert Martin", 2008, 89.90))
  end

  # Menu
  def self.exibir_menu
    puts "\n=== MENU ==="
    puts "1. Listar Livros"
    puts "2. Buscar por autor"
    puts "3. Ver valor total"
    puts "4. Ver livro mais caro"
    puts "5. Adicionar Livro"
    puts "6. Remover Livro"
    puts "7. Sair"
    puts "Escolha uma opção: "
  end
end