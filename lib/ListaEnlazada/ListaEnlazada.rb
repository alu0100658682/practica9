class List
    
    attr_accessor :cabeza, :inicio
    

    def initialize(cabeza)
        
        @cabeza = cabeza
        
    end
    
    def listavacia()
        
        if (@cabeza == nil)
            true
        elsif (@cabeza != nil)
            false
        end
        
    end
    
    def insert(x)
        if ((x.is_a? Node) != true)
            nodo = Node.new(nil, x, nil)
        else
            nodo = x
        end
        # puts nodo
        # puts "------------------------------"
        
        if (@cabeza == nil)
            # puts "Meto el primero"
            @cabeza = nodo
            @inicio = nodo
                
        elsif (@cabeza == @inicio)
            # puts "Meto el segundo"
            nodo.prev = @inicio

            @cabeza = nodo 
            @inicio.next = @cabeza
                
        elsif (@cabeza != nil && @cabeza != @inicio)
            #  puts "Meto los siguientes"
             nodo.prev = cabeza
             cabeza.next = nodo
             @cabeza = nodo
                
        end
    end
end