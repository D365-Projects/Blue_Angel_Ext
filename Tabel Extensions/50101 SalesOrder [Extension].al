tableextension 50101 SaleorderExt extends "Sales Line"
{
    fields
    {
        field(50100; "Direct_Cost"; Decimal)
        {
            Caption = 'Direct Cost';
            DataClassification = ToBeClassified;
        }
        // Add changes to table fields here
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}