#!/usr/bin/ruby
#encoding: utf-8

# Permite cargar los datos de una matriz desde la entrada estándar.
def introducir_matriz(mat)
  for i in 0...mat.length
    for j in 0...mat[i].length
      print "Elemento (#{i+1}, #{j+1}): "
      mat[i][j] = gets.to_i
    end
  end
end

# Muestra una matriz en forma de matriz por pantalla.
def mostrar_matriz(mat)
  for i in 0...mat.length
    for j in 0...mat[i].length
      print "#{mat[i][j]} "
    end
    print "\n"
  end
end

# Función que suma dos matrices y devuelve el resultado.
def sumar_matrices(mat1, mat2)
  m = mat1.size

  # Comprobaciones de que se puede realizar la suma.
  if m != mat2.size
    puts "Las matrices no se pueden sumar (Número de filas distinto)."
    return
  end

  for i in 0...(m)
    if mat1[i].size != mat2[i].size
      puts "Las matrices no se pueden sumar (Número de columnas distinto)."
      return
    end
  end

  # Creamos la matriz resultado.
  mat3 = Array.new(m){ Array.new(mat1[0].size, 0) }

  # Algoritmo de la suma de matrices.
  for i in 0...(m) do
    for j in 0...(mat3[i].size) do
      mat3[i][j] = mat1[i][j] + mat2[i][j]
    end
  end

  mat3
end

# Función que multiplica dos matrices y devuelve el resultado.
def multiplicar_matrices(mat1, mat2)
  # Comprobamos que el número de columnas de la matriz 1 y el número de filas
  # de la matriz 2 coinciden para poder realizar la multiplicación.
  for i in 0...mat1.length
    if mat2.length != mat1[i].length
      puts "Matrices no multiplicables."
      return
    end
  end

  # Crea un array con tantas posiciones como filas tiene la matriz 1.
  # El array se rellena con arrays de una longitud igual a la cantidad de
  # columnas de la matriz 2 (suponemos que todas las filas tienen el mismo
  # tamaño que la primera).
  # De este modo construimos una matriz a partir de arrays de arrays.
  result = Array.new(mat1.length){ Array.new(mat2[0].length, 0) }

  # Algoritmo de la multiplicación de matrices.
  for i in 0...result.length
    for j in 0...result[i].length
      for k in 0...mat1[0].length
        result[i][j] += mat1[i][k] * mat2[k][j]
      end
    end
  end

  result
end

print "Inserte el número de filas que tendrán las matrices: "
fil = gets.to_i
print "Inserte el número de columnas que tendrán las matrices: "
col = gets.to_i

m1= Array.new(fil){ Array.new(col, 0) }
m2= Array.new(fil){ Array.new(col, 0) }

puts "\nIntroduzca los elementos de la primera matriz."
introducir_matriz m1

puts "\nIntroduzca los elementos de la segunda matriz."
introducir_matriz m2

puts "\nMatrices:"
mostrar_matriz m1
puts " "
mostrar_matriz m2
puts " "
puts "Suma:"
mostrar_matriz sumar_matrices(m1,m2)
puts " "
puts "Multiplicación:"
mostrar_matriz multiplicar_matrices(m1,m2)
puts " "
