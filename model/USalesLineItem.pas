unit USalesLineItem;

interface
Uses UMoney,UProductDescription;
 type
 SalesLineItem = class
  function getSubtotal(): Money;
  constructor create (desc: ProductDescription; quantity: integer);
 end;
implementation

{ SalesLineItem }

constructor SalesLineItem.create(desc: ProductDescription; quantity: integer);
begin

end;

function SalesLineItem.getSubtotal: Money;
begin

end;

end.
