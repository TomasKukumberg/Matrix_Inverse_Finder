clear all; close all;
space = [ones(1, 9) * -5; ones(1, 9) * 5];
pop = genrpop(100, space); %populacia 100 jedincov

inputMat = -50 + (100)*rand(3) %Vypise vygenerovanu 3x3 maticu
%inputMat = [35.4125, 1.1595, 13.6149; 6.0555, -44.2644, -39.7489;-47.4769, 4.5690, 5.1128] %takto mozme zadavat "rucne"
FinalMatrix = []; %matica do ktorej budeme ukladat velkost chyby podla fitness f. ktoru potom vykreslime
    
for k = 1: 1000
    fit = matrixFit(pop,inputMat);
    top = selbest(pop, fit, [3 3 2 2]);
    VeryBest = selbest(pop, fit, 1);
    FinalMatrix(k) = matrixFit(VeryBest, inputMat);
    other = seltourn(pop, fit, 90);
    other = crossov(other, 4, 1);
    other = mutx(other, 0.1, space);
    other = muta (other, 0.1, ones(1,9) * 0.15, space );
    pop = [top; other];
end

best = selbest(pop, fit, 1); %vyber najlepsieho jedinca podla fitness funkcii po iteraciach
matrixOfBest = reshape(best, [3, 3]) %Vypise najlepsieho jedinca podla fitness funkcii v tvare 3x3 matice
inverseOfInput = inv(inputMat)   %Vypise inputMat^-1
errorSizeFinal = matrixFit(best, inputMat) 
plot(FinalMatrix);
xlabel('Number of evaluations of the fitness function');
ylabel('error-size');
hold on;