      *----Gustavo Mendes de Moura 
       IDENTIFICATION      DIVISION.
       PROGRAM-ID. CLIENTES.
      * COMENTÁRIO
       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT   IS COMMA.


       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       01  WRK-NOME        PICTURE X(20)   VALUE SPACES.
       01  WRK-SALDO       PICTURE S9(10)   VALUE ZEROS.
       01  WRK-SALDO-ED    PICTURE Z.ZZZ.ZZZ.ZZ9,99.

       PROCEDURE           DIVISION.
           DISPLAY "DIGITE SEU NOME "
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO "
               ACCEPT WRK-SALDO.

      *---- OPERAÇÕES

           DISPLAY WRK-NOME

      *---- SOMA
           ADD 500 TO WRK-SALDO
               MOVE WRK-SALDO TO WRK-SALDO-ED
           DISPLAY "SALDO " WRK-SALDO-ED.
           DISPLAY "------------------"

      *---- SUBTRAÇÃO
           SUBTRACT 200 FROM WRK-SALDO
               MOVE WRK-SALDO TO WRK-SALDO-ED
           DISPLAY "SALDO " WRK-SALDO-ED.

      *---- MULTIPLICAÇÃO
           MULTIPLY WRK-SALDO BY 2 GIVING WRK-SALDO.
               MOVE WRK-SALDO TO WRK-SALDO-ED
           DISPLAY "SALDO " WRK-SALDO-ED.

      *---- DIVISÃO
           DIVIDE WRK-SALDO BY 3 GIVING WRK-SALDO.
               MOVE WRK-SALDO TO WRK-SALDO-ED
           DISPLAY "SALDO " WRK-SALDO-ED.
   

           STOP RUN.
           

