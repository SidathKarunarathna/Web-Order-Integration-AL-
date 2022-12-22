report 50101 GoodsPurchasedReport
{
    ApplicationArea = All;
    Caption = 'Goods Purchased Report';
    UsageCategory = ReportsAndAnalysis;

    RDLCLayout = './layouts/GoodsPurchasedReportConf.rdl';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "Inventory Posting Group";
            PrintOnlyIfDetail = true;
            column(InventoryPostingGroup; "Inventory Posting Group")
            {
            }
            column(UnitCost; "Unit Cost")
            {
            }
            column(Pdate1; Pdate1)
            {

            }
            column(Pdate2; Pdate2)
            {

            }

            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = field("No.");
                DataItemLinkReference = Item;

                column(Item_No_; "Item No.")
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Remaining_Quantity; "Remaining Quantity")
                {

                }
                column(Posting_Date; "Posting Date")
                {

                }

                trigger OnPreDataItem()
                begin
                    SetRange("Entry Type", "Entry Type"::Purchase);
                    SetRange("Document Type", "Document Type"::"Purchase Receipt");
                    if (Pdate1 <> 0D) AND (Pdate2 <> 0D) then
                        SetRange("Posting Date", Pdate1, Pdate2)
                end;


            }


        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Date Range';
                    field(Pdate1; Pdate1)
                    {
                        Caption = 'From';
                        ApplicationArea = all;
                    }
                    field(Pdate2; Pdate2)
                    {
                        Caption = 'To';
                        ApplicationArea = all;
                    }
                }
            }
        }

    }
    var
        Pdate1: Date;
        Pdate2: Date;
        InvetoryPerItem: Decimal;
        LastItem: Code[20];
        PurchaseQuanitity: Decimal;
        SaleQuantity: Decimal;
}
