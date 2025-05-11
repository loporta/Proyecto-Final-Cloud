CLASS lhc_historial DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Historial RESULT result.

    METHODS Cambiar_Estado FOR MODIFY
      IMPORTING keys FOR ACTION Historial~Cambiar_Estado RESULT result.


ENDCLASS.

CLASS lhc_historial IMPLEMENTATION.

  METHOD get_instance_features.

    READ ENTITIES OF z_r_inct_5469 IN LOCAL MODE
    ENTITY Historial
    FIELDS ( PreviousStatus )
    WITH CORRESPONDING #( keys )
    RESULT DATA(Historiales)
    FAILED failed.

    result = VALUE #( FOR historial IN Historiales ( %tky = historial-%tky
                                                     %field-NewStatus = COND #( WHEN historial-NewStatus = 'A'
                                                                                THEN if_abap_behv=>fc-f-read_only
                                                                                ELSE if_abap_behv=>fc-f-unrestricted )

                                                     %action-Cambiar_Estado = COND #( WHEN historial-NewStatus = 'A'
                                                                                      THEN if_abap_behv=>fc-o-disabled
                                                                                      ELSE if_abap_behv=>fc-o-enabled )
                                                                                       ) ).

  ENDMETHOD.

  METHOD Cambiar_Estado.

    DATA: estado_update TYPE TABLE FOR UPDATE zc_histotial_inc_5469.
    DATA: estado_inci   TYPE TABLE FOR UPDATE z_r_inct_5469.

    READ ENTITIES OF z_r_inct_5469 IN LOCAL MODE
        ENTITY Historial
        FIELDS ( PreviousStatus )
        WITH CORRESPONDING #( keys )
        RESULT DATA(Historiales).

    LOOP AT Historiales ASSIGNING FIELD-SYMBOL(<Historial>).
      DATA(Status_up) = keys[ KEY id %tky = <Historial>-%tky ]-%param-Status.
      DATA(descripcion) = keys[ KEY id %tky = <Historial>-%tky ]-%param-Observacion.

      APPEND VALUE #( %tky  = <Historial>-%tky
                      newstatus = Status_up
                      text = descripcion ) TO estado_update.

    ENDLOOP.

    MODIFY ENTITIES OF z_r_inct_5469 IN LOCAL MODE
        ENTITY Historial
        UPDATE
        FIELDS ( PreviousStatus )
        WITH estado_update.

    READ ENTITIES OF z_r_inct_5469 IN LOCAL MODE
        ENTITY Historial
        ALL FIELDS
        WITH CORRESPONDING #( keys )
        RESULT DATA(Historiales_final).


    "INCIDENTE
    READ ENTITIES OF z_r_inct_5469 IN LOCAL MODE
        ENTITY _inct
        FIELDS ( Status )
        WITH CORRESPONDING #( keys )
        RESULT DATA(Incidentes).

    LOOP AT Incidentes ASSIGNING FIELD-SYMBOL(<Incidente>).

      APPEND VALUE #(  %tky  = <Incidente>-%tky
                       status = Status_up ) TO  estado_inci.

    ENDLOOP.

    MODIFY ENTITIES OF z_r_inct_5469 IN LOCAL MODE
        ENTITY _inct
        UPDATE
        FIELDS ( Status )
         WITH estado_inci.




    result = VALUE #( FOR Historial IN Historiales_final ( %tky  =  Historial-%tky
                                                          %param = Historial ) ).

  ENDMETHOD.



ENDCLASS.

*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
