tableextension 50107 SalesInvoiceLine extends "Sales Invoice Line"
{
    fields
    {
        field(50101; "SKU"; Text[50])
        {
            Caption = 'SKU';
            DataClassification = ToBeClassified;
        }
        field(50106; "UPC_SG"; Code[20])
        {
            Caption = 'UPC';
            DataClassification = ToBeClassified;
        }
        field(50109; "Shipping Cost"; Decimal)
        {
            Caption = 'Shipping Cost';
            DataClassification = ToBeClassified;

        }


    }

    keys
    {

    }

    fieldgroups
    {

    }

    var
        myInt: Integer;
}