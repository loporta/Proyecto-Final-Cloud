CLASS lhc_Historial DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Historial RESULT result.

    METHODS Cambiar_Estado FOR MODIFY
      IMPORTING keys FOR ACTION Historial~Cambiar_Estado RESULT result.

ENDCLASS.

CLASS lhc_Historial IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD Cambiar_Estado.
  ENDMETHOD.

ENDCLASS.
