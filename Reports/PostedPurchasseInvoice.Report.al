report 50143 PostedPurchaseInvoice
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Posted Purchase Invoice';
    RDLCLayout = './layouts/PostedPurchaseInvoiceConf.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem("Purch. Inv. Header"; "Purch. Inv. Header")
        {
            RequestFilterFields = "No.";
            column(No_; "No.")
            {

            }
            column(Posting_Date; "Posting Date")
            {

            }
            column(Buy_from_Vendor_Name; "Buy-from Vendor Name")
            {

            }
            column(Buy_from_Address; "Buy-from Address")
            {

            }
            column(Buy_from_Address_2; "Buy-from Address 2")
            {

            }
            column(Buy_from_City; "Buy-from City")
            {

            }
            column(Buy_from_Contact_No_; "Buy-from Contact No.")
            {

            }
            column(ComName; ComInfo.Name)
            {

            }
            column(ComAddress; ComInfo.Address)
            {

            }
            column(ComPhone; ComInfo."Phone No.")
            {

            }
            column(ComEmail; ComInfo."E-Mail")
            {

            }
            column(ComRegNo; ComInfo."Company Registration No.")
            {

            }
            column(ComWebSite; ComInfo."Company Website")
            {

            }
            column(Expense_Type; "Expense Type")
            {

            }
            column(Vendor_Invoice_No_; "Vendor Invoice No.")
            {

            }
            column(Payment_Terms_Code; "Payment Terms Code")
            {

            }
            column(Due_Date; "Due Date")
            {

            }
            column(Amount_Including_VAT; "Amount Including VAT")
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
                column(Unit_of_Measure; "Unit of Measure")
                {

                }
                column(Direct_Unit_Cost; "Direct Unit Cost")
                {

                }



            }
        }

    }




    var
        ComInfo: Record "Company Information";

    trigger OnPreReport()
    begin
        ComInfo.Get;
    end;
}