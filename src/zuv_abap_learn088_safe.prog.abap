*&---------------------------------------------------------------------*
*& Report zuv_abap_learn088_safe
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zuv_abap_learn088_safe.

DATA: usr_locked TYPE bapislockd.

CALL FUNCTION 'BAPI_USER_GET_DETAIL'
    DESTINATION sy-sysid
    EXPORTING
        username = sy-uname
        IMPORTING
            islocked = usr_locked.

IF usr_locked = 'UUUU'.
    WRITE 'safe unlocked'.
ELSE.
    WRITE 'safe locked'.
ENDIF.
