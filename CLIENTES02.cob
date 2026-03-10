       
       IDENTIFICATION      DIVISION.

       PROGRAM-ID.  CLIENTES02.

       ENVIRONMENT         DIVISION.
       CONFIGURATION       SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT   IS COMMA.

       DATA                DIVISION.
       WORKING-STORAGE     SECTION.
       01  WRK-NOME        PICTURE X(20)  VALUE SPACES.
       01  WRK-SALDO       PICTURE S9(10) COMP VALUE ZEROS.
       01  WRK-SALDO-ED    PICTURE Z.ZZZ.ZZZ.ZZ9,99.
       01  WRK-TIPO-CONTA  PICTURE 9.

       PROCEDURE           DIVISION.
           DISPLAY "DIGITE SEU NOME ".
               ACCEPT WRK-NOME.
           DISPLAY "DIGITE SEU SALDO ".
               ACCEPT WRK-SALDO.
           DISPLAY "QUAL O TIPO DE CONTA (1-FISICA, 2-JURIDICA) ? ".
               ACCEPT WRK-TIPO-CONTA.

           IF WRK-SALDO IS GREATER THAN OR EQUAL TO 5000     
               DISPLAY WRK-NOME
               MOVE WRK-SALDO TO WRK-SALDO-ED
               DISPLAY "SALDO" WRK-SALDO-ED

               EVALUATE WRK-TIPO-CONTA
                   WHEN 1
                       DISPLAY "CONTA FISICA"
                   WHEN 2
                       DISPLAY "CONTA JURIDICA"
                   WHEN OTHER
                      DISPLAY "TIPO DE CONTA NÃO EXISTE"
               END-EVALUATE
               
           ELSE
               DISPLAY "SALDO NAO COMPATIVEL"
           END-IF.

           STOP RUN.
