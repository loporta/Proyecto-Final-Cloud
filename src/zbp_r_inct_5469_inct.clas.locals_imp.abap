CLASS lhc_Z_R_INCT_5469 DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR z_r_inct_5469 RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR z_r_inct_5469 RESULT result.

    METHODS setModify FOR DETERMINE ON MODIFY
      IMPORTING keys FOR z_r_inct_5469~setModify.

    METHODS setStatus FOR DETERMINE ON SAVE
      IMPORTING keys FOR z_r_inct_5469~setStatus.

    METHODS validar_campos FOR VALIDATE ON SAVE
      IMPORTING keys FOR z_r_inct_5469~validar_campos.

    METHODS validar_creacion FOR VALIDATE ON SAVE
      IMPORTING keys FOR z_r_inct_5469~validar_creacion.

ENDCLASS.

CLASS lhc_Z_R_INCT_5469 IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD setModify.
  ENDMETHOD.

  METHOD setStatus.
  ENDMETHOD.

  METHOD validar_campos.
  ENDMETHOD.

  METHOD validar_creacion.
  ENDMETHOD.

ENDCLASS.
