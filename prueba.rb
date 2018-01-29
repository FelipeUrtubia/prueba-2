#Ingresar las notas
def read_alum(file_name)
  file = File.open(file_name, 'r')
  alum = file.readlines.map(&:chomp).map { |lines| lines.split(', ') }
  file.close
  alum
end
notas = read_alum("alumnos.csv")

#creaciòn del menù
  opcion = 0
puts " "
while opcion
  puts " "
  puts " "
  puts "Hola"
  puts "¿Que le apetece hacer hoy?"
  puts "1: Imprimir el nombre de cada alumno y su promedio."
  puts "2: Contar cantidad de inacistencias totales."
  puts "3: Ver a los alumnos aprobados."
  puts "4: Salir del programa."
  puts " "
  opcion = gets.to_i
case opcion

  when 1

    notas.each do |e|
      suma = 0
      prom =0
      print e.shift
        e.each do |ele|
            if ele == "A"
              0
            end
            num = ele.to_f
            suma += num
            prom = suma/5
          end

      print " "
      print "Tiene un promedio de: "
      puts prom
      puts " "
    end
    notas = read_alum("alumnos.csv")

  when 2
      notas.each do |e|
      ina = 0
      print e.shift
        e.each do |ele|
            if ele == "A"
              ina += 1
            end
          end

      print " "
      print "Tiene un total de inacistencia de: "
      puts ina
      puts " "
    end
    notas = read_alum("alumnos.csv")

  when 3
    notas.each do |e|
      suma = 0
      prom =0
      print e.shift
        e.each do |ele|
            if ele == "A"
              0
            end
            num = ele.to_f
            suma += num
            prom = suma/5
          end
      print " "
      if prom >= 5
        print "Esta aprobado/a"
      else
        print "Esta reprobado/a"
      end
      puts " "
    notas = read_alum("alumnos.csv")
  end
  when 4
    puts "Adios."
    exit
  else
    puts "Opcion invalida"
end
end
