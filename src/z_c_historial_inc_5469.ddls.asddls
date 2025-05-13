@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo Historial'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define view entity Z_C_HISTORIAL_INC_5469
  as projection on ZC_HISTOTIAL_INC_5469

{
@UI.lineItem: [{ position: 10, label: 'UUID', importance: #LOW }]
  key HisUuid,
      IncUuid,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @ObjectModel.text.element: [ 'Text' ]
      @EndUserText.label: 'Id Historial'
      HisId,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @EndUserText.label: 'Estado Previo'
      PreviousStatus,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @EndUserText.label: 'Nuevo Estado'
      NewStatus,

      @EndUserText.label: 'Descripción'
      Text,

      @Semantics.user.createdBy: true
      LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,

      @Semantics.user.lastChangedBy: true
      LocalLastChangedBy,

      @Semantics.systemDateTime.lastChangedAt: true
      LocalLastChangedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      LastChangedAt,
      /* Associations */
      _inci,
      _inct: redirected to parent Z_C_INCT_5469
}
