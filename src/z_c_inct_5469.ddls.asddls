@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo Indicente'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity Z_C_INCT_5469
  provider contract transactional_query
  as projection on Z_R_INCT_5469
{


      @UI.lineItem: [{ position: 10, label: 'UUID', importance: #LOW }]
  key IncUuid,


      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @ObjectModel.text.element: [ 'Title' ]
      @EndUserText.label: 'Id Indicente'
      @UI.lineItem: [{ position: 20, label: 'IncidentId', importance: #HIGH }]
      IncidentId,

      @EndUserText.label: 'Titulo'
      Title,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @EndUserText.label: 'Descripción'
      Description,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @EndUserText.label: 'Estado'
      @Consumption.valueHelpDefinition: [{
        entity: {
          name: 'ZC_STATUS_5469',
          element: 'StatusCode'
        },
        label: 'Estado'
        }]
      Status,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @EndUserText.label: 'Prioridad'
      @Consumption.valueHelpDefinition: [{
        entity: {
          name: 'ZC_PRIORITY_5469',
          element: 'PriorityCode'
        },
        label: 'Prioridad'
        }]
      Priority,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @EndUserText.label: 'Fecha de Creación'
      CreationDate,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @EndUserText.label: 'Fecha Modificación'
      ChangedDate,

      @Semantics.user.createdBy: true
      LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,

      @Semantics.user.lastChangedBy: true
      LocalLastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _history,
      _Priority,
      _Status
}
