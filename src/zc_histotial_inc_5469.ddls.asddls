@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Historial'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
define view entity ZC_HISTOTIAL_INC_5469
  as select from zdt_inct_h_5469 as a
  association [1..1] to zdt_inct_5469        as _inci on $projection.IncUuid = _inci.inc_uuid
  association        to parent Z_R_INCT_5469 as _inct on $projection.IncUuid = _inct.IncUuid
{
      @UI.lineItem: [{ position: 10, label: 'UUID', importance: #LOW }]
  key a.his_uuid              as HisUuid,
      _inci.inc_uuid          as IncUuid,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @ObjectModel.text.element: [ 'Text' ]

      a.his_id                as HisId,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM

      a.previous_status       as PreviousStatus,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      a.new_status            as NewStatus,


      a.text                  as Text,

      @Semantics.user.createdBy: true
      a.local_created_by      as LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      a.local_created_at      as LocalCreatedAt,

      @Semantics.user.lastChangedBy: true
      a.local_last_changed_by as LocalLastChangedBy,

      @Semantics.systemDateTime.lastChangedAt: true
      a.local_last_changed_at as LocalLastChangedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      a.last_changed_at       as LastChangedAt,
      _inci,
      _inct
}
