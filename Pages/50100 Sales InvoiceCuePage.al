page 50100 SalesInvoiceCuePage
{
    PageType = CardPart;
    SourceTable = "Sales Invoice Header";
    ApplicationArea = All;
    Caption = 'Sales Invoice Cues';

    layout
    {
        area(content)
        {
            cuegroup(SalesInvoices)
            {
                Caption = 'Sales Invoices';
                field(OpenInvoices; CountOpenInvoices())
                {
                    Caption = 'Open Invoices';
                    DrillDown = true;
                    DrillDownPageID = "Sales Invoice List";
                }
            }
        }
    }

    local procedure CountOpenInvoices(): Integer
    var
        SalesInvoiceHeader: Record "Sales Header";
    begin
        SalesInvoiceHeader.SetRange(Status, SalesInvoiceHeader.Status::Open);
        exit(SalesInvoiceHeader.Count());
    end;
}