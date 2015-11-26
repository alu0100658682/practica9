class Biblio
   include Comparable
   attr_reader :autor,:titulo, :serie, :fecha_publicacion
  
    def initialize(aut, titulo, serie, publicacion)
  
		@autor = Array.new(aut)
		@titulo = titulo
		@serie = serie
		@fecha_publicacion = publicacion
    
    end
    
    def to_s
        
        "#{@autor}, #{@titulo}, #{@serie}, #{@fecha_publicacion}"
        
    end
end