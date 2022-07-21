# Metodo delle successive bisezioni

Implementazione del metodo delle successive bisezioni per il calcolo degli zeri di una funzione $(f(\alpha) = 0)$

## Idea generale
L'algoritmo di basa sulla ripetuta divisione di un intervallo dato in input, inizialmente si verificano le ipotesi del [teorema di Bolzano](https://it.wikipedia.org/wiki/Teorema_di_Bolzano), se soddisfatte si procederà con la divisione dell'intervallo $[a, b]$ in due semi-intervalli $[a, m]$ e $[m , b]$, si andranno nuovamente a valutare le ipotesi del teorema e nell'intervallo dove saranno soddisfatte si procederà nuovamente con la divisione e così via fino a che non si avrà una buona approssimazione del valore.

## Iterata generale

$$ x^{(k)} = \frac{a^{(k)} + b^{(k)}}{2}$$

----

## Esempio 

Sia $f: \mathbb{R} \longrightarrow [-1, 1]$ t.c. $f(x) = cos(x)$,
siano, inoltre 
* $a = 1$
* $b = 2$  
* $tolleranza = 10^{-10}$

<div align="center"><img src="img/Cos.png" /></div>

Essendo la funzione continua, le ipotesi del teorema di Bolzano sono rispettate e deve esservi una radice compresa tra $[1, 2]$, quindi 
$$x^{(0)} = \frac{1+2}{2} = 1.5 $$
La funzione, quindi, sarà valutata, $f(1.5) = cos(1.5) = 0.0707$, essendo un valore positivo si andrà a considerare l'intervallo $[1.5, 2]$ dato che $f(1.5)*f(2) < 0$, quindi la prissima iterata sarà
$$x^{(1)} = \frac{1.5 + 2}{2}$$

Oss. L'algoritmo si ferma quando trova un'approssimazione della radice al disotto di una tolleranza (input) oppure quando raggionge il massimo numero di passi stabilito (input).

### Di seguito riportata la tabella delle varie iterate generate con Matlab:

| Passo |    Valore x    | Stima errore  |
|:----: |      :----:    |    :----:     |
| 0     | 1.500000000000 | 5.00e-01      |
| 1     | 1.750000000000 | 2.50e-01      |
| 2     | 1.625000000000 | 1.25e-01      |
| 3     | 1.562500000000 | 6.25e-02      |
| 4     | 1.593750000000 | 3.12e-02      |
| 5     | 1.578125000000 | 1.56e-02      |
| 6     | 1.570312500000 | 7.81e-03      |
| 7     | 1.574218750000 | 3.91e-03      |
| 8     | 1.572265625000 | 1.95e-03      |
| 9     | 1.571289062500 | 9.77e-04      |
| 10    | 1.570800781250 | 4.88e-04      |
| 11    | 1.570556640625 | 2.44e-04      |
| 12    | 1.570678710938 | 1.22e-04      |
| 13    | 1.570739746094 | 6.10e-05      |
| 14    | 1.570770263672 | 3.05e-05      |
| 15    | 1.570785522461 | 1.53e-05      |
| 16    | 1.570793151855 | 7.63e-06      |
| 17    | 1.570796966553 | 3.81e-06      |
| 18    | 1.570795059204 | 1.91e-06      |
| 19    | 1.570796012878 | 9.54e-07      |
| 20    | 1.570796489716 | 4.77e-07      |
| 21    | 1.570796251297 | 2.38e-07      |
| 22    | 1.570796370506 | 1.19e-07      |
| 23    | 1.570796310902 | 5.96e-08      |
| 24    | 1.570796340704 | 2.98e-08      |
| 25    | 1.570796325803 | 1.49e-08      |
| 26    | 1.570796333253 | 7.45e-09      |
| 27    | 1.570796329528 | 3.73e-09      |
| 28    | 1.570796327665 | 1.86e-09      |
| 29    | 1.570796326734 | 9.31e-10      |
| 30    | 1.570796327200 | 4.66e-10      |
| 31    | 1.570796326967 | 2.33e-10      |
| 32    | 1.570796326851 | 1.16e-10      |


