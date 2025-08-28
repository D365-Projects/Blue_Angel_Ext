pageextension 50107 SalesQuoteExt extends "Sales Quote"
{
    layout
    {
        addafter(Status)
        {
            field("Quote Status"; Rec."Quote Status")
            {
                ApplicationArea = All;
                Caption = 'Quote Status';
                ToolTip = 'Status of the Sales Quote';
                ShowMandatory = true;
            }
            field("Follow Up Date"; Rec."Follow Up Date")
            {
                ApplicationArea = All;
                Caption = 'Follow Up Date';
                ToolTip = 'Date to follow up Sales Quote';
                ShowMandatory = true;
            }
            field("Project Report"; Rec."Project")
            {
                ApplicationArea = All;
                Caption = 'Project Report';
                ToolTip = 'Indicates if the quote is related to a project';
                trigger OnValidate()
                var
                begin
                    Rec.Device := false;
                    Rec."T&M" := false;
                    CurrPage.Update();
                end;

            }

            field("Device Report"; Rec."Device")
            {
                ApplicationArea = All;
                Caption = 'Device Report';
                ToolTip = 'Indicates if the quote includes devices';
                trigger OnValidate()
                var
                begin
                    Rec.Project := false;
                    Rec."T&M" := false;
                    CurrPage.Update();
                end;
            }
            field("T&M"; Rec."T&M")
            {
                ApplicationArea = All;
                Caption = 'T&M Report';
                ToolTip = 'Indicates if the quote includes devices';
                trigger OnValidate()
                var
                begin
                    Rec.Project := false;
                    Rec.Device := false;
                    CurrPage.Update();
                end;
            }
        }

        // Add changes to page layout here
    }

    actions
    {
        modify(Print)
        {
            trigger OnAfterAction()
            var
                myInt: Integer;
            begin

            end;
        }

        addafter(Customer)
        {

            action("PR")
            {
                Caption = 'Project';
                ApplicationArea = All;
                Image = Quote;
                trigger OnAction()
                var
                    SalesQuoteRec: Record "Sales Header";
                begin
                    CurrPage.SetSelectionFilter(Rec);
                    Report.RunModal(50105, true, false, Rec)
                end;
            }
        }
        addafter(Print)
        {
            group(Reports)
            {
                action("Project")
                {
                    Caption = 'Project';
                    ApplicationArea = All;
                    Visible = VisibleProjectAction;
                    Promoted = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SalesQuoteRec: Record "Sales Header";
                    begin
                        CurrPage.SetSelectionFilter(Rec);
                        Report.RunModal(50105, true, false, Rec)
                    end;
                }
                action("Product")
                {
                    Caption = 'Devices';
                    ApplicationArea = all;
                    Visible = VisibleDevicesAction;
                    Promoted = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SalesQuoteRec: Record "Sales Header";
                    begin
                        CurrPage.SetSelectionFilter(Rec);
                        Report.RunModal(50106, true, false, Rec)
                    end;
                }
                action("TM")
                {
                    Caption = 'T&M';
                    ApplicationArea = all;
                    Visible = VisibleTMAction;
                    Promoted = true;
                    PromotedCategory = Process;
                    trigger OnAction()
                    var
                        SalesQuoteRec: Record "Sales Header";
                    begin
                        CurrPage.SetSelectionFilter(Rec);
                        Report.RunModal(1304, true, false, Rec)
                    end;
                }
            }
        }
    }


    var
        myInt: Integer;
        VisibleProjectAction: Boolean;
        VisibleDevicesAction: Boolean;
        VisibleTMAction: Boolean;

    trigger OnAfterGetCurrRecord();
    var
        Days: Integer;
        salesRecSetup: Record "Sales & Receivables Setup";
        Today: Date;
        PostingDateNotification: Notification;
    begin
        // Set visibility for report actions: only one can be visible at a time
        if Rec.Project then begin
            VisibleprojectAction := true;
            VisibleTMAction := false;
            VisibleDevicesAction := false;
            CurrPage.Update();
        end else if Rec.Device then begin
            VisibleprojectAction := false;
            VisibleTMAction := false;
            VisibleDevicesAction := true;
            CurrPage.Update();
        end else if Rec."T&M" then begin
            VisibleprojectAction := false;
            VisibleTMAction := true;
            VisibleDevicesAction := false;
            CurrPage.Update();
        end else begin
            VisibleprojectAction := false;
            VisibleTMAction := false;
            VisibleDevicesAction := false;
            CurrPage.Update();
        end;
        // Today := Today;
        // if not salesRecSetup.Get() then
        //     Error('Sales & Receivables Setup must be defined.');
        // if (Rec."Follow Up Date" = 0D) and (Rec."Document Date" <> 0D) then
        //     Rec."Follow Up Date" := CalcDate(salesRecSetup."Quote Validity Calculation", Rec."Document Date");
        // if (Rec."Document Type" = Rec."Document Type"::Quote) and (Rec."Quote Status" = Rec."Quote Status"::"Waiting for Payment") and ((Rec."Follow Up Date" - Rec."Document Date") > 14) then begin
        //     Days := Rec."Follow Up Date" - Rec."Document Date";
        //     PostingDateNotification.Message(
        //         StrSubstNo('Quote %1 has been Waiting for Payment for more than %2 days.', Rec."No.", Days));
        //     PostingDateNotification.Scope(NotificationScope::LocalScope);
        //     PostingDateNotification.Send();
        // end;

        // // Check if status is On Hold and Follow Up Date is today
        // if (Rec."Quote Status" = Rec."Quote Status"::"On Hold") and (Rec."Follow Up Date" = Today) then begin
        //     PostingDateNotification.Message(
        //         StrSubstNo('Quote %1 is On Hold and Follow Up Date is today.', Rec."No."));
        //     PostingDateNotification.Scope(NotificationScope::LocalScope);
        //     PostingDateNotification.Send();
        // end;

    end;



}