class Pregunta
    attr_accessor :pregunta, :respuesta
  
    def initialize(pregunta, respuesta)
      @pregunta = pregunta
      @respuesta = respuesta
    end
  end
  
  # Lista de preguntas y respuestas
  preguntas = [
    Pregunta.new("¿Cómo se llama el método en Ruby para imprimir en la consola?", "puts"),
    Pregunta.new("¿Cuál es el resultado de 3 + 5 en Ruby?", "8"),
    Pregunta.new("¿Qué método se utiliza en Ruby para concatenar dos strings?", "concat"),
    Pregunta.new("¿Cuantas letras tene el nombre ruby?", "4 letras"),
    Pregunta.new("¿cual es el resultado de 12 * 12?", "144"),
    Pregunta.new("¿Qué es html?", "un lenguaje de marcado"),
    Pregunta.new("¿con que signo se concatena en ruby?", "con +"),
    Pregunta.new("¿cual es el framework mas potente de ruby?", "ruby on rails"),
    Pregunta.new("¿menciona dos framework popular de css?", "bootstrap y tailwindcss"),
    Pregunta.new("¿Menciona una base de datos relacional?", "msql"),



  ]
  #Funcion
  # Función para hacer preguntas
  def hacer_preguntas(preguntas)
    puntaje = 0
  
    preguntas.each do |pregunta|
      puts pregunta.pregunta
      respuesta_usuario = gets.chomp
  
      if respuesta_usuario.downcase == pregunta.respuesta.downcase
        puts "¡Respuesta correcta!"
        puntaje += 1
      else
        puts "Respuesta incorrecta. La respuesta correcta es: #{pregunta.respuesta}"
      end
    end
  
    puts "Juego terminado. Puntaje final: #{puntaje}/#{preguntas.length}"
  end
  
  hacer_preguntas(preguntas)


  