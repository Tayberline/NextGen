unit USale;

interface

uses System.SysUtils, System.Generics.Defaults,
  System.Generics.Collections, System.Types,
  UProductDescription, UMoney, USalesLineItem, UDate, UPayment;

type
  Sale = class
  private
    lineItems: Tlist<SalesLineItem>;
    date: date;
    isCompleate: boolean;
    payment: payment;
  public
    function getBalance(): Money;
    function getTotal(): Money;
    procedure becomeComplete();
    procedure makeLineItem(desc: ProductDescription; quantity: integer);
    procedure makePayment(cashTendered: Money);
  end;

implementation

{ Sale }

procedure Sale.becomeComplete;
begin
  isCompleate := true;
end;

function Sale.getBalance: Money;
begin
  result := payment.getAmount().minus(getTotal());
end;

function Sale.getTotal(): Money;
var
  total: Money;
  subtotal: Money;
  lineItem: SalesLineItem;
begin
  total := Money.Create(0);
  subtotal := Money.Create(0);
  for lineItems in lineItem do
  begin
    subtotal := lineItem.getSubtotal();
    total.add(subtotal);
  end;
  result := total;
end;

procedure Sale.makeLineItem(desc: ProductDescription; quantity: integer);
begin
  lineItems.add(SalesLineItem.Create(desc, quantity))
end;

procedure Sale.makePayment(cashTendered: Money);
begin
  payment := payment.Create(cashTendered);
end;

end.
