class Revista < Biblio
    
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
    
    
end