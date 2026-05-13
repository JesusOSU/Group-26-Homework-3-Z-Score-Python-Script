#This program will be used to verrify the tests for our python implementation. I'm mostly doing this so that I can get some practice working with julia, so we can (and probably should) put together some sort of excel sheet for the expected values anyways, but I'll leave that up to you two.
population1 = [14, 28, 96, 97, 21, 29, 29, 4, 58, 
               42, 25, 97, 49, 33, 75, 53, 14, 53, 
               45, 87, 75, 66, 62, 55, 57, 44, 44, 
               94, 19, 96, 12, 59, 86, 88, 61, 68, 
               37, 64, 19, 46, 68, 98, 19, 54, 65, 
               30, 1, 82, 76, 3]

population2 = [-16, 10, -15, -6, -5, -20, -11, 9, -9,
               -7, 5, -14, 6, -10, -22, -19, 21, 11, 
               -18, -13, -24, -21, 14, 19, 20, 13, 16, 
               8, 4, 3, 18, 22, 17, 7, -12, -3, 
               23, -8, 2, -2, -4, 1, 12, -25, -1,
               15, 0, -23, -17, 24]

population3 = [125, 475, 275, 550, 350, 325, 575, 
               25, 225, 150, 425, 75, 175, 650, 
               600, 625, 675, 250, 100, 0, 375, 
               500, 400, 450, 300, 525, 50, 200]

function mu_mean(P)
	mu = 0
	for x0 in P
		mu = mu + x0
	end
	return mu
end

function sigma_stnd_deviation(P)
	mu = mu_mean(P)
	numerator = 0
	for x0 in P #This loop will add the square of the difference of each value in the array and the average value of the array.
		numerator = numerator + ((x0 - mu)^2)
	end

	n0 = size(P,1)
	sub_average = numerator/n0
	
	sigma = sqrt(sub_average)

	return sigma
end

function z_score(P, x)
	mu0 = mu_mean(P)
	sigma0 = sigma_stnd_deviation(P)
	return (x - mu0)/sigma0
end

function testcase_1_2_3() #This function returns the expected values for test cases 1, 2, and 3.
	mu1 = mu_mean(population1)
	println(z_score(population1, mu1))

	mu2 = mu_mean(population2)
	println(z_score(population2, mu2))

	mu3 = mu_mean(population3)
	println(z_score(population3, mu3))
end

testcase_1_2_3()



populationofpopulations = [population1, population2, population3] #Here's an array of our arrays for my convenience.

function testcase_4_5_6(PP) #This function returns the expected values for test cases 4, 5, and 6.
	
end
