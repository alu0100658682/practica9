class Ebook < Biblio
    
    attr_reader :url
    
    def initialize(aut, titulo, serie, publicacion, isbn, url)
  
		@autor = Array.new(aut)
		@titulo = titulo
		@serie = serie
		@fecha_publicacion = publicacion
		@numero_ISBN = Array.new(isbn)
		@url = url
		
    
    end
    
    def to_s
        
        "#{@autor}, #{@titulo}, #{@serie}, #{@fecha_publicacion}, #{@numero_ISBN}, #{@url}"

    end

end