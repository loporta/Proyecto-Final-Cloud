CLASS lhc__inct DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

*    METHODS get_instance_features FOR INSTANCE FEATURES
*      IMPORTING keys REQUEST requested_features FOR _inct RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR _inct RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR _inct RESULT result.

*    METHODS Cambiar_Estado FOR MODIFY
*      IMPORTING keys FOR ACTION _inct~Cambiar_Estado RESULT result.

    METHODS setModify FOR DETERMINE ON MODIFY
      IMPORTING keys FOR _inct~setModify.

    METHODS setStatus FOR DETERMINE ON SAVE
      IMPORTING keys FOR _inct~setStatus.

ENDCLASS.

CLASS lhc__inct IMPLEMENTATION.

*  METHOD get_instance_features.
*  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

*  METHOD Cambiar_Estado.
*
*
*
*  ENDMETHOD.

  METHOD setModify.
  ENDMETHOD.

  METHOD setStatus.
  ENDMETHOD.

ENDCLASS.
