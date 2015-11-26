class Revista < Biblio
    
    include Comparable
    attr_reader :numero_ISSN
    
    def initialize(aut, titulo, serie, publicacion, issn)
  
		@autor = Array.new(aut)
		@titulo = titulo
		@serie = serie
		@fecha_publicacion = publicacion
		@numero_ISSN = Array.new(issn)
    
    end
    
    
    def to_s 
        
        "#{@autor}, #{@titulo}, #{@serie}, #{@fecha_publicacion}, #{@numero_ISSN}"

    end
    
    
    def <=> (other)
        if ((other.instance_of? Revista) || (other.instance_of? Ebook) || (other.instance_of? Libro))
            return ((self.to_s[2]) <=> (other.to_s[2]))
		else
			false
        end
    end
end