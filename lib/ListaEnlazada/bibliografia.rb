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
    
#     def <=> (other)
#         if ((other.instance_of? Revista) || (other.instance_of? Ebook) || (other.instance_of? Libro))
#             return ((self.to_s[2]) <=> (other.to_s[2]))
# 		else
# 			false
#         end
#     end
    
    def <=>(other)
        if ((other.instance_of? Revista) || (other.instance_of? Ebook) || (other.instance_of? Libro))
             if((@autor <=> other.autor)==0) 
                 if ((@fecha_publicacion <=> other.fecha_publicacion)==0)
                     @titulo <=> other.titulo
                 else
                     @fecha_publicacion <=> other.fecha_publicacion
                 end
             else
                 @autor <=> other.autor
             end
        else
            false
        end
    end
    
end