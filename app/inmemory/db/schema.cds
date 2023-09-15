namespace guitarStore;

entity Product {
  key ID: UUID;
  productInformation: String(200);
  targetAudiencePitch: String(200);
  warehouseStock: Integer;
  discount: Decimal(5,2);
}

