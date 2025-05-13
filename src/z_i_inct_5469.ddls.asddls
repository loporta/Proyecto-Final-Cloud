@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface incidiente'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_INCT_5469
  provider contract transactional_interface
  as projection on Z_R_INCT_5469
{
  key IncUuid,
      IncidentId,
      Title,
      Description,
      Status,
      Priority,
      CreationDate,
      ChangedDate,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _history : redirected to composition child Z_I_HISTOTIAL_INC_5469,
      _Status,
      _Priority

}
