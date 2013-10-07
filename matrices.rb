def sumar_matrices(mat1, mat2)

end

def multiplicar_matrices(mat1, mat2)
  # Comprobamos que el número de columnas de la matriz 1 y el número de filas
  # de la matriz 2 coinciden para poder realizar la multiplicación.
  for i in 0..mat1.length
    if mat2.length != mat1[i].length
      puts "Parámetros inválidos o matrices no multiplicables."
      return
    end
  end

  # Crea un array con tantas posiciones como filas tiene la matriz 1.
  result = Array.new (mat1.length)

  # El array se rellena con arrays de una longitud igual a la cantidad de
  # columnas de la matriz 2 (suponemos que todas las columnas tienen el mismo
  # tamaño que la primera).
  # De este modo construimos una matriz a partir de arrays de arrays.
  for i in 0..result.length
    result[i] = Array.new (mat2[0].length, 0) # La matriz se rellena de '0'
  end

  # Algoritmo de la multiplicación de matrices.
  for i in 0..result.length
    for j in 0..result[i].length
      for k in 0..mat1[0].length
        result[i][j] += mat1[i][k] * mat2[k][j]
      end
    end
  end

  return result
end

