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

end


