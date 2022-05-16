% UFABC - Dinamica de Gases - 2022.1
% Grupo Falcao Peregrino
% Trabalho Final

clc
clear all 
close all 

U_inf = 1;
L = 5;
mu_inf = 1.789E-5;
rho_inf = 1.225;

h = 0.01;
x = 0:h:0.3;

%% Espessura da Camada Limite de Velocidade
for i = 1 : length(x)
    Re_x(i) = (U_inf*i)/(mu_inf/rho_inf);
    delta(i) = (5*i)/sqrt(Re_x(i));
end

figure(1)
plot(x, delta, 'LineWidth', 2, 'color', 'black');
title(' Espessura da Camada Limite de Velocidade', 'FontSize', 14);
xlabel('x', 'FontSize', 20);
ylabel('y', 'FontSize', 20);
axis tight
grid on

%% Espessura do Deslocamento
for i = 1 : length(x)
    Re_x(i) = (U_inf*i)/(mu_inf/rho_inf);
    esp_desl(i) = (1.72*i)/sqrt(Re_x(i));
end

figure(2)
plot(x, esp_desl, 'LineWidth', 2, 'color', 'black');
title(' Espessura do Deslocamento', 'FontSize', 14);
xlabel('x', 'FontSize', 20);
ylabel('y', 'FontSize', 20);
axis tight
grid on

%% Espessura de Quantidade de Movimento
for i = 1 : length(x)
    Re_x(i) = (U_inf*i)/(mu_inf/rho_inf);
    qtde_desl(i) = (0.664*i)/sqrt(Re_x(i));
end

figure(3)
plot(x, qtde_desl, 'LineWidth', 2, 'color', 'black');
title(' Espessura de Quantidade de Movimento', 'FontSize', 14);
xlabel('x', 'FontSize', 20);
ylabel('y', 'FontSize', 20);
axis tight
grid on


%% juntando tudo
figure(4)
hold all

for i = 1:length(x)
    Re_x(i) = (U_inf*i)/(mu_inf/rho_inf);
    
    delta(i) = (5*i)/sqrt(Re_x(i));
    %plot(x, delta, 'LineWidth', 2)
    
    esp_desl(i) = (1.72*i)/sqrt(Re_x(i));
    %plot(x, esp_desl, 'LineWidth', 2)
    
    qtde_desl(i) = (0.664*i)/sqrt(Re_x(i));
    %plot(x, qtde_desl, 'LineWidth', 2)  
    
end

plot(x, delta, 'LineWidth', 2)
plot(x, esp_desl, 'LineWidth', 2)
plot(x, qtde_desl, 'LineWidth', 2)

title(' Espessuras de Camada Limite ', 'FontSize', 14);
xlabel('x(m)', 'FontSize', 20);
ylabel('Espessura(m)', 'FontSize', 20);
axis tight
grid on
Legend3 = {'\delta', '\delta *', '\Theta'};
legend(Legend3, 'FontSize', 14);