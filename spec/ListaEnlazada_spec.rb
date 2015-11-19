require 'spec_helper'

describe ListaEnlazada do
  
  before :each do
   #Libros
    @libro1 = Libro.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'], "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide. (The Facets of Ruby).","",'Pragmatic Bookshelf', '4 edition', (Time.local(2013,7,7).strftime("%A, %d/%m/%Y")),['ISBN-13: 978-1937785499'])
    @libro2 = Libro.new(['Scott Chacon'], "Pro Git 2009th Edition (Pro)","", "Apress", "2009 edition", (Time.local(2009,8,27).strftime("%A, %d/%m/%Y")), ['ISBN-13: 978-1430218333', 'ISBN-10: 1430218339'])
    @libro3 = Libro.new(['David Flanagan', 'Yukihiro Matsumoto'], "The Ruby Programming Language", "","O’Reilly Media", "1 edition", (Time.local(2008,4,2).strftime("%A, %d/%m/%Y")), ['ISBN-10: 0596516177', 'ISBN-13: 978-0596516178'])
    @libro4 = Libro.new(['David Chelimsky', 'Dave Astels', 'Bryan Helmkamp', 'Dan North', 'Zach Dennis', 'Aslak Hellesoy'], "The RSpecBook: Behaviour Driven Development with RSpec", "","Cucumber, and Friends (The Facets of Ruby) PragmaticBookshelf", "1 edition",(Time.local(2010,12,25).strftime("%A, %d/%m/%Y")), ['ISBN-10: 1934356379', 'ISBN-13: 978-1934356371'])
    @libro5 = Libro.new(['Richard E. Silverman'], "Git Pocket Guide", "" ,"O’Reilly Media", "1 edition", (Time.local(2013,8,2).strftime("%A, %d/%m/%Y")), ['ISBN-10: 1449325866', 'ISBN-13: 978-1449325862'])
    
  #Revistas
    @revista1 = Revista.new(['Pepe'], 'Marca', '12', (Time.local(2015,7,7).strftime("%A, %d/%m/%Y")), ['123123123'] )
  
  #Ebooks
    @ebook1 = Ebook.new(['Fernando Cortés'], 'El charco bajo el agua', '12',(Time.local(2013,7,7).strftime("%A, %d/%m/%Y")),['ISBN-13: 978-1937785499'], 'http://www.ebookgratis.com')
    
  #Lista
    @lista1 = List.new(nil)
    
  #Nodos
    @nodo1 = Node.new(nil, @revista1, nil)
    @nodo2 = Node.new(nil, @libro1, nil)
    @nodo3 = Node.new(nil, @ebook1, nil)
    @nodo4 = Node.new(nil, @libro4, nil)
    @nodo5 = Node.new(nil, @libro5, nil)
    
  end
  
  
  context "Correcta creación" do
      
     it "Debe crearse un objeto de tipo Lista." do
         
        expect((@lista1).is_a? List).to eq true
        
    end
    
    it "Debe crearse un objeto de tipo Biblio." do
        
        expect((@libro1).is_a? Biblio).to eq true
        
    end
    
    it "Debe crearse un objeto de tipo Nodo." do
        
        expect((@nodo1).is_a? Node).to eq true
        
    end
    
  end
  
  context "Metodos Lista" do
      
     it "Comprobar que la lista está vacía." do
         
       expect(@lista1.cabeza).to eq nil
       
     end
     
     it "Comprobar que la lista está vacía.Función" do
         
      expect(@lista1.listavacia()).to eq true
      
    end
    
    it "Insertar un nodo en la lista." do
         
      @lista1.insert(@nodo1)
      expect(@lista1.listavacia()).not_to eq true
      
    end
    
  end
end