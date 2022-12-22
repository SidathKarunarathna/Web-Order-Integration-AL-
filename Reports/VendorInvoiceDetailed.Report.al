report 50145 PostedVendorInvoiceDetailed
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Vendor Invoice Detailed Report';
    RDLCLayout = './layouts/PostedVendorInvoiceDetailedConf.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
        {
            RequestFilterFields = "Expense Type";
            column(No_; "No.")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }

            column(ComName; ComInfo.Name)
            {

            }
            column(ComAddress; ComInfo.Address)
            {

            }

            column(Expense_Type; "Expense Type")
            {

            }
            column(Vendor_Invoice_No_; "Vendor Invoice No.")
            {

            }

            column(comAddress2; ComInfo."Address 2")
            {

            }
            column(ComCity; ComInfo.City)
            {

            }



            dataitem("Purch. Inv. Line"; "Purch. Inv. Line")
            {
                DataItemLink = "Document No." = field("no.");
                DataItemLinkReference = "Purch. Inv. Header";

                column(No; "No.")
                {

                }
                column(Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Direct_Unit_Cost; "Direct Unit Cost")
                {

                }
                column(Line_Discount_Amount; "Line Discount Amount")
                {

                }
            }
            trigger OnPreDataItem()
            begin
                if Pdate <> 0D then
                    SetRange("Posting Date", 0D, Pdate);
                if Ddate <> 0D then
                    SetRange("Due Date", 0D, Ddate);

            end;
        }

    }
    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Date Filters';
                    field(Pdate; Pdate)
                    {
                        Caption = 'Posting Date';
                        ApplicationArea = all;
                    }
                    field(Ddate; Ddate)
                    {
                        Caption = 'Due Date';
                        ApplicationArea = all;
                    }
                }
            }
        }
    }



    var
        ComInfo: Record "Company Information";
        Pdate: Date;
        Ddate: Date;

    trigger OnPreReport()
    begin
        ComInfo.Get;
    end;
}