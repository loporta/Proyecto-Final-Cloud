CLASS zclas_rum DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    METHODS:
      insert_incidente.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zclas_rum IMPLEMENTATION.
  METHOD insert_incidente.

  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA: lv_incidente TYPE zdt_inct_5469.
    .
    lv_incidente-incident_id = '01'.
    lv_incidente-status = 'OP'.
    lv_incidente-description = 'OPEN'.
    lv_incidente-priority = 'M'.
    lv_incidente-title = 'Prueba1'.

    modify zdt_inct_5469 FROM @lv_incidente.
    IF sy-subrc = 0.
      COMMIT WORK AND WAIT.
    ELSE.
      ROLLBACK WORK.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
