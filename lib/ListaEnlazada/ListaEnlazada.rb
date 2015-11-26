class List
    
    include Enumerable
    
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
    
    def insert2(array)
        
        for i in 0..(array.length-1)
        
            insert(array[i])
            
        end
    end
    
    def length()
        
        i=0
        nodo = @inicio
        
        loop do 
            
            nodo = nodo.next
            i = i + 1
            
        break if(nodo.next == nil)
        end 
        
        return i
        
    end
    
    def extraerprimero()
        
        @inicio.value.to_s
        
    end
    
    def extraerultimo()
       
        @cabeza.value.to_s
        
    end
    
    def nodelist()
        
        node = @inicio 
        a = String.new()
        
        loop do
            
            a << node.value.to_s 
            a << "\n"
            node = node.next
        
        break if (node == nil)
        end
        return  a
    end
    
    def deletelast()
        
        @cabeza = @cabeza.prev
        @cabeza.next = nil
        
    end
    
    def deletefirst()
        
        @inicio = @inicio.next
        @inicio.prev = nil
        
    end
    
    def delete(pos)
        if (pos == 0)
            self.deletefirst()
        end
        if (pos == self.length())
            self.deletelast()
        end
        
        nodo = @inicio
        if (self.length() > pos && pos != 0  )
            # puts self.length()
            # puts
            # puts pos
            for i in 1..pos
                # puts "Value of local variable is #{i}"
                nodo = nodo.next
            end
            if (nodo != nil)
                
                auxprev = nodo.prev
                auxnext = nodo.next
                nodo.prev = nil
                nodo.next = nil
                auxprev.next = auxnext
                auxnext.prev = auxprev
            
            else
                #No hay nodo en esa posición
            end
        end
    end
    
    def each
        node = @inicio 
            
        while (node != nil)
                    
            yield node.value.to_s
            node = node.next
        
        end
        
    end
end