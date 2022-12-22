codeunit 50134 EventSubs
{
    [EventSubscriber(ObjectType::Page, Page::"Purchase Order", 'OnBeforeActionEvent', 'Post and &Print', true, true)]
    local procedure ValidateExpenseType(var Rec: Record "Purchase Header")
    begin
        Rec.TestField("Expense Type");
    end;

    [EventSubscriber(ObjectType::Page, Page::"Purchase Order", 'OnBeforeActionEvent', 'Post', true, true)]
    local procedure ValidateExpenseType2(var Rec: Record "Purchase Header")
    begin
        Rec.TestField("Expense Type");
    end;

    [EventSubscriber(ObjectType::Page, Page::"Purchase Order", 'OnBeforeActionEvent', '&Print', true, true)]
    local procedure ValidateExpenseType3(var Rec: Record "Purchase Header")
    begin
        Rec.TestField("Expense Type");
    end;

}