pageextension 50105 VendorExtension extends "Vendor Card"
{
    layout
    {
        modify(Name)
        {
            ShowMandatory = true;
        }
        modify(MobilePhoneNo)
        {
            ShowMandatory = true;
        }
        modify("E-Mail")
        {
            ShowMandatory = true;
        }
        modify(County)
        {
            ShowMandatory = true;
        }

        modify("Country/Region Code")
        {
            ShowMandatory = true;
        }

        modify(Address)
        {
            ShowMandatory = true;
        }
        modify(City)
        {
            ShowMandatory = true;
        }
        modify("Post Code")
        {
            ShowMandatory = true;
        }
        modify("Phone No.")
        {
            ShowMandatory = true;
        }

        modify("VAT Bus. Posting Group")
        {
            ShowMandatory = true;
        }
        modify("Vendor Posting Group")
        {
            ShowMandatory = true;
        }

        modify("VAT Registration No.")
        {
            ShowMandatory = true;
        }
        modify("Payment Terms Code")
        {
            ShowMandatory = true;
        }
        modify("Payment Method Code")
        {
            ShowMandatory = true;
        }
        modify("Language Code")
        {
            ShowMandatory = true;
        }
        modify("Gen. Bus. Posting Group")
        {
            ShowMandatory = true;
        }
        modify("Address 2")
        {
            ShowMandatory = true;
        }
        modify("Currency Code")
        {
            ShowMandatory = true;
        }

        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        myInt: Integer;
    begin
        Rec.TestField(Name);
        Rec.TestField(Name);
        Rec.TestField("Mobile Phone No.");
        Rec.TestField("E-Mail");
        Rec.TestField("Country/Region Code");
        Rec.TestField(Address);
        Rec.TestField(City);
        Rec.TestField("Post Code");
        Rec.TestField("Phone No.");
        Rec.TestField("Vendor Posting Group");
        Rec.TestField("VAT Registration No.");
        Rec.TestField("Payment Terms Code");
        Rec.TestField("Payment Method Code");
        Rec.TestField("Language Code");
        Rec.TestField("Gen. Bus. Posting Group");
        Rec.TestField("VAT Bus. Posting Group");
        Rec.TestField("Address 2");
        Rec.TestField(County);
        rec.TestField("Currency Code");

    end;
}