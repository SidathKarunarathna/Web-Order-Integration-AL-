codeunit 50137 Shipment
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', true, true)]
    local procedure OnAfterPostSalesDoc(var SalesHeader: Record "Sales Header"; SalesInvHdrNo: Code[20]; SalesShptHdrNo: Code[20])
    var
        WebOrder: Record WebOrder;
        WebOrder2: Record WebOrder;
    begin
        Clear(WebOrder);
        WebOrder.SetCurrentKey("Document Type", "Document No.", "Line No.");
        WebOrder.SetRange("Document Type", WebOrder."Document Type"::"Sales Order");
        WebOrder.SetRange("Document No.", SalesHeader."No.");
        WebOrder.ModifyAll("Posted Invoice No.", SalesInvHdrNo);
        WebOrder.ModifyAll("Posted Shipment No.", SalesShptHdrNo);

    end;

}
