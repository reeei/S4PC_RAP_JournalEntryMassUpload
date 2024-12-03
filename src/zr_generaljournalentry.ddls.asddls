@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GL Journal Entry'
define root view entity ZR_GeneralJournalEntry
  as select from zgje_header
  composition [0..*] of ZR_GeneralJournalEntryItem as _Item
{
  key uuid                   as Uuid,
      companycode            as CompanyCode,
      accountingdocument     as AccountingDocument,
      ledgergroup            as LedgerGroup,
      documentreferenceid    as DocumentReferenceID,
      documentheadertext     as DocumentHeaderText,
      postingfiscalperiod    as PostingFiscalPeriod,
      accountingdocumenttype as AccountingDocumentType,
      documentdate           as DocumentDate,
      postingdate            as PostingDate,
      exchangeratedate       as ExchangeRateDate,
      exchangerate           as ExchangeRate,
      currencycode           as CurrencyCode,

      messageid,
      messageno,
      message,

      @Semantics.user.createdBy: true
      created_by             as Created_By,
      @Semantics.systemDateTime.createdAt: true
      created_at             as Created_At,
      @Semantics.user.lastChangedBy: true
      last_changed_by        as Last_Changed_By,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at        as Last_Changed_At,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at  as Local_Last_Changed_At,
      _Item
}
