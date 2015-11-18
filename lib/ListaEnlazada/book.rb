class Libro < Biblio
    
    attr_reader :editorial, :numero_edicion, :numero_ISBN
    
    def initialize(aut, titulo, serie, editorial, edicion, publicacion, isbn)
  
		@autor = Array.new(aut)
		@titulo = titulo
		@serie = serie
		@editorial = editorial
		@numero_edicion = edicion
		@fecha_publicacion = publicacion
		@numero_ISBN = Array.new(isbn)
    
    end
    
    
    def to_s
        
        "#{@autor}, #{@titulo}, #{@serie}, #{@editorial}, #{@numero_edicion}, #{@fecha_publicacion}, #{@numero_ISBN}"
        
    end
    
end
