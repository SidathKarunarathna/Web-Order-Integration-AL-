report 50144 PostedVendorInvoice
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Vendor Invoice';
    RDLCLayout = './layouts/PostedVendorInvoiceConf.rdl';
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
            column(Inv__Discount_Amount; "Invoice Discount Amount")
            {

            }
            column(Amount_Including_VAT; "Amount Including VAT")
            {

            }
            column(Remaining_Amount; "Remaining Amount")
            {

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