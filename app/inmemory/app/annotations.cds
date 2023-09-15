using { guitarStoreSrv } from '../srv/service.cds';

annotate guitarStoreSrv.Product with @odata.draft.enabled;
annotate guitarStoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productInformation } };
annotate guitarStoreSrv.Product with {
  ID @Common.Text: { $value: productInformation, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.Product with @UI.Identification: [{ Value: productInformation }];
annotate guitarStoreSrv.Product with {
  productInformation @title: 'Product Information';
  targetAudiencePitch @title: 'Target Audience Pitch';
  warehouseStock @title: 'Warehouse Stock';
  discount @title: 'Discount'
};

annotate guitarStoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productInformation },
    { $Type: 'UI.DataField', Value: targetAudiencePitch },
    { $Type: 'UI.DataField', Value: warehouseStock },
    { $Type: 'UI.DataField', Value: discount }
];

annotate guitarStoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productInformation },
    { $Type: 'UI.DataField', Value: targetAudiencePitch },
    { $Type: 'UI.DataField', Value: warehouseStock },
    { $Type: 'UI.DataField', Value: discount }
  ]
};

annotate guitarStoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

