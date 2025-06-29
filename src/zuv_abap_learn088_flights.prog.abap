*&---------------------------------------------------------------------*
*& Report zuv_abap_learn088_flights
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zuv_abap_learn088_flights.

 DATA it_flights TYPE TABLE OF spfli.
 DATA wa_flight TYPE spfli.

 SELECT * FROM spfli INTO TABLE it_flights.

IF sy-subrc = 0.

    LOOP AT it_flights INTO wa_flight.
        WRITE:/ wa_flight-connid, wa_flight-cityfrom, wa_flight-countryfr, wa_flight-cityto, wa_flight-countryto.
    ENDLOOP.
ELSE.
    WRITE: 'Sql statement was not executed succsessfully. please try again later'.
    ENDIF.
