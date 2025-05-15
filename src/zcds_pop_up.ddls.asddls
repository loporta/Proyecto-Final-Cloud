@EndUserText.label: 'CDS Abtracta'
define abstract entity ZCDS_POP_UP
  //  with parameters parameter_name : parameter_type
{
  @UI.selectionField: [{ position: 10 }]
  Status      : zed_status_code_5469;
  @UI.selectionField: [{ position: 20 }]
  Observacion : abap.char( 20 );

}
