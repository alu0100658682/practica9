class Ebook < Biblio

    include Comparable
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
 
    def <=> (other)
        if ((other.instance_of? Revista) || (other.instance_of? Ebook) || (other.instance_of? Libro))
            return ((self.to_s[2]) <=> (other.to_s[2]))
		else
			false
        end
    end

end