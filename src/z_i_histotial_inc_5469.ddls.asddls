@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Historial'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_I_HISTOTIAL_INC_5469 
as projection on ZC_HISTOTIAL_INC_5469
{
    key HisUuid,
    IncUuid,
    HisId,
    PreviousStatus,
    NewStatus,
    Text,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _inci,
    _inct: redirected to parent Z_I_INCT_5469
}
