def sumar_matrices(mat1, mat2)

	m = mat1.size

	mat3 = Array.new(m,0)

	for i in 0...(m) do
  

		mat3[i] = Array.new(m,0)


	end


	for i in 0...(m) do
  
		for j in 0...(m) do
    
			mat3[i][j] = mat1[i][j] + mat2[i][j]
  
		end

	end

end

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

  return result
end


