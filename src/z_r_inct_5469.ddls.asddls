@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Indicente'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define root view entity Z_R_INCT_5469
  as select from zdt_inct_5469 as a
  association [0..1] to ZC_STATUS_5469        as _Status   on $projection.Status = _Status.StatusCode
  association [0..1] to ZC_PRIORITY_5469      as _Priority on $projection.Priority = _Priority.PriorityCode
  composition [0..*] of ZC_HISTOTIAL_INC_5469 as _history
{
      @UI.lineItem: [{ position: 10, label: 'UUID', importance: #LOW }]
  key a.inc_uuid              as IncUuid,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @ObjectModel.text.element: [ 'Title' ]
      @EndUserText.label: 'Id Incidente'
      a.incident_id           as IncidentId,

      a.title                 as Title,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      a.description           as Description,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @Consumption.valueHelpDefinition: [{
      entity: {
        name: 'ZC_STATUS_5469',
        element: 'StatusCode'
      },
      label: 'Estado'
      }]
      _Status.StatusCode      as Status,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @Consumption.valueHelpDefinition: [{
      entity: {
        name: 'ZC_PRIORITY_5469',
        element: 'PriorityCode'
      },
      label: 'Prioridad'
      }]
      _Priority.PriorityCode  as Priority,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      a.creation_date         as CreationDate,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      a.changed_date          as ChangedDate,

      @Semantics.user.createdBy: true
      a.local_created_by      as LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      a.local_created_at      as LocalCreatedAt,

      @Semantics.user.lastChangedBy: true
      a.local_last_changed_by as LocalLastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      a.local_last_changed_at as LocalLastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      a.last_changed_at       as LastChangedAt,
      _Status,
      _Priority,
      _history
}
