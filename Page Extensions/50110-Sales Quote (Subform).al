pageextension 50110 "Sales Quote Line" extends "Sales Quote Subform"
{
    layout
    {
        addafter("Unit Price")
        {
            field("Sales Margin_SG"; Rec."Sales Margin_SG")
            {
                ApplicationArea = all;
            }
            field("Margin %"; Rec."Margin %")
            {
                ApplicationArea = all;
            }
        }
        modify("Allow Invoice Disc.")
        {
            Visible = true;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                rec.Modify();
            end;
        }
        modify("Unit Cost (LCY)")
        {
            Visible = true;
            Editable = true;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                if Rec.Quantity > 0 then
                    if Rec."Line Amount" > 0 then BEGIN
                        Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                        Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                        Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                        rec.Modify();
                    end
            end;
        }
        modify("Line Discount %")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                rec.Modify();
            end;
        }
        modify("Line Discount Amount")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                rec.Modify();
            end;
        }
        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item_Lrec: Record Item;
            begin
                if rec.Quantity <> 0 then begin
                    Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                    Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                    Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                    rec.Modify();
                end;
            end;
        }
        modify("Unit Price")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
                MyNotification: Notification;
                Notification_IRec: Notification;
                NotificationLifecycleMgt: Codeunit "Notification Lifecycle Mgt.";
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                rec.Modify();
            end;
        }
        modify(Quantity)

        {
            trigger OnAfterValidate()
            begin
                if Rec.Quantity > 0 then
                    if Rec."Line Amount" > 0 then BEGIN
                        Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                        Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                        Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                        Rec.Modify();
                    end
            end;
        }
        modify("Inv. Discount Amount")
        {
            Visible = true;
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin
                Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                Rec.Modify();
            end;
        }
        modify("Invoice Discount Amount")
        {
            trigger OnAfterValidate()
            var
                SalesLine_Lrec: Record "Sales Line";
            begin

                Rec.SetCurrentKey("Line No.");
                Rec.SetAscending("Line No.", true);
                if Rec.FindSet() then
                    repeat
                        Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                        Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                        Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                        Rec.Modify();
                    until Rec.Next() = 0;
            end;
        }
        modify("Invoice Disc. Pct.")
        {
            trigger OnAfterValidate()
            var
                myInt: Integer;
            begin

                Rec.SetCurrentKey("Line No.");
                Rec.SetAscending("Line No.", true);
                if Rec.FindSet() then
                    repeat
                        Rec."Net Price_SG" := (Rec."Line Amount" - rec."Inv. Discount Amount") / Rec.Quantity;
                        Rec."Sales Margin_SG" := Rec."Net Price_SG" - Rec."Unit Cost";
                        Rec."Margin %" := ROUND((Rec."Sales Margin_SG" / Rec."Net Price_SG") * 100, 0.01);
                        Rec.Modify();
                    until Rec.Next() = 0;
            end;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        ShowFields: Boolean;
}