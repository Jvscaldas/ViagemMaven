CREATE DATABASE varsql
GO
USE varsql

-- a) Fazer um algoritmo que leia 1 n�mero e mostre se s�o m�ltiplos de 2,3,5 ou nenhum deles
DECLARE @num1 INT
SET @num1 = 10

IF @num1 % 2 = 0
	PRINT CAST(@num1 AS VARCHAR) + ' � m�ltiplo de 2' 
ELSE
	PRINT CAST(@num1 AS VARCHAR) + ' n�o � m�ltiplo de 2'

IF @num1 % 3 = 0
	PRINT CAST(@num1 AS VARCHAR) + ' � m�ltiplo de 3' 
ELSE
	PRINT CAST(@num1 AS VARCHAR) + ' n�o � m�ltiplo de 3' 

IF @num1 % 5 = 0
	PRINT CAST(@num1 AS VARCHAR) + ' � m�ltiplo de 5' 
ELSE
	PRINT CAST(@num1 AS VARCHAR) + ' n�o � m�ltiplo de 5' 

-- b)  Fazer um algoritmo que leia 3 n�mero e mostre o maior e o menor
DECLARE @num1 INT, @menor INT, @num2 INT, @num3 INT, @maior INT
SET @num1 = 10 
SET @num2 = 22 
SET @num3 = 4

SET @menor = @num1
SET @maior = @num1

IF @menor > @num2 
	SET @menor = @num2
IF @menor > @num3 
	SET @menor = @num3

IF @maior < @num2 
	SET @maior = @num2
IF @maior < @num3 
	SET @maior = @num3

PRINT @maior 
PRINT @menor 

-- c) Fazer um algoritmo que calcule os 15 primeiros termos da s�rie
	--1,1,2,3,5,8,13,21,...
	--E calcule a soma dos 15 termos
DECLARE @cont INT, @n1 INT, @n2 INT, @n3 INT
SET @n1 = 0
SET @n2 = 1
SET @cont = 3

WHILE @cont <= 15 BEGIN
SET @n3 = @n1 + @n2


SET @cont = @cont + 1
SET @n1 = @n2
SET @n2 = @n3
END;

PRINT @n3 

-- d) Fazer um algoritmo que separa uma frase, colocando todas as letras em mai�sculo e em min�sculo (Usar fun��es UPPER e LOWER)

-- e) Fazer um algoritmo que inverta uma palavra (Usar a fun��o SUBSTRING)