

page 50104 "Sherweb_Invoices"
{
    ApplicationArea = All;
    Caption = 'Sherweb Invoices';
    PageType = Worksheet;
    ;
    SourceTable = "Invoice SG";
    CardPageId = "Sherweb Invoices";
    AutoSplitKey = true;
    DelayedInsert = true;
    InsertAllowed = false;
    ModifyAllowed = false;
    SaveValues = true;
    SourceTableView = sorting(InvoiceNo);
    UsageCategory = Tasks;
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(InvoiceNo; Rec.InvoiceNo)
                {
                    ToolTip = 'Specifies the value of the InvoiceNo field.', Comment = '%';
                }
                field(Organization; Rec.Organization)
                {
                    ToolTip = 'Specifies the value of the Organization field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(InvoicingDate; Rec.InvoicingDate)
                {
                    ToolTip = 'Specifies the value of the InvoicingDate field.', Comment = '%';
                }
                field(InvoicePeriodFrom; Rec.InvoicePeriodFrom)
                {
                    ToolTip = 'Specifies the value of the InvoicePeriodFrom field.', Comment = '%';
                }
                field(InvoicePeriodTo; Rec.InvoicePeriodTo)
                {
                    ToolTip = 'Specifies the value of the InvoicePeriodTo field.', Comment = '%';
                }
                field(ServicePeriodFrom; Rec.ServicePeriodFrom)
                {
                    ToolTip = 'Specifies the value of the ServicePeriodFrom field.', Comment = '%';
                }
                field(ServicePeriodTo; Rec.ServicePeriodTo)
                {
                    ToolTip = 'Specifies the value of the ServicePeriodTo field.', Comment = '%';
                }
                field(Qty; Rec.Qty)
                {
                    ToolTip = 'Specifies the value of the Qty field.', Comment = '%';
                }
                field(SKU; Rec.SKU)
                {
                    ToolTip = 'Specifies the value of the SKU field.', Comment = '%';
                }
                field("Customer List Price"; Rec."Customer List Price")
                {
                    ToolTip = 'Specifies the value of the Customer List Price field.', Comment = '%';
                }
                field(ListPrice; Rec.ListPrice)
                {
                    ToolTip = 'Specifies the value of the ListPrice field.', Comment = '%';
                }
                field("Discounted Price NotProrated"; Rec."Discounted Price NotProrated")
                {
                    ToolTip = 'Specifies the value of the Discounted Price NotProrated field.', Comment = '%';
                }
                field(UnitPrice; Rec.UnitPrice)
                {
                    ToolTip = 'Specifies the value of the UnitPrice field.', Comment = '%';
                }
                field(LineTotal; Rec.LineTotal)
                {
                    ToolTip = 'Specifies the value of the LineTotal field.', Comment = '%';
                }
                field("Organization SubTotal"; Rec."Organization SubTotal")
                {
                    ToolTip = 'Specifies the value of the Organization SubTotal field.', Comment = '%';
                }
                field("Reseller SubTotal"; Rec."Reseller SubTotal")
                {
                    ToolTip = 'Specifies the value of the Reseller SubTotal field.', Comment = '%';
                }
                field("Invoice SubTotal"; Rec."Invoice SubTotal")
                {
                    ToolTip = 'Specifies the value of the Invoice SubTotal field.', Comment = '%';
                }
                field(HST; Rec.HST)
                {
                    ToolTip = 'Specifies the value of the HST field.', Comment = '%';
                }
                field(PST; Rec.PST)
                {
                    ToolTip = 'Specifies the value of the PST field.', Comment = '%';
                }
                field(GST; Rec.GST)
                {
                    ToolTip = 'Specifies the value of the GST field.', Comment = '%';
                }
                field("Grand Total"; Rec."Grand Total")
                {
                    ToolTip = 'Specifies the value of the Grand Total field.', Comment = '%';
                }
                field(Currency; Rec.Currency)
                {
                    ToolTip = 'Specifies the value of the Currency field.', Comment = '%';
                }
                field("Apply tax(es)"; Rec."Apply tax(es)")
                {
                    ToolTip = 'Specifies the value of the Apply tax(es) field.', Comment = '%';
                }
                field("MD - STATE SALES/USE TAX"; Rec."MD - STATE SALES/USE TAX")
                {
                    ToolTip = 'Specifies the value of the MD - STATE SALES/USE TAX field.', Comment = '%';
                }
                field("US - FEDERAL TELECOM "; Rec."US - FEDERAL TELECOM ")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL TELECOM RELAY SERVICE SURCHARGE field.', Comment = '%';
                }
                field("US - FEDERAL TELEPHONE EXCISE"; Rec."US - FEDERAL TELEPHONE EXCISE")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL TELEPHONE EXCISE TAX field.', Comment = '%';
                }
                field("US - FEDERAL UNIVERSAL SERVICE"; Rec."US - FEDERAL UNIVERSAL SERVICE")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL UNIVERSAL SERVICE FUND SURCHARGE field.', Comment = '%';
                }
                field("US - FEDERAL NUMBERING "; Rec."US - FEDERAL NUMBERING ")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL NUMBERING PLAN SURCHARGE field.', Comment = '%';
                }
                field("US-FEDERAL COMMUNICATIONS"; Rec."US-FEDERAL COMMUNICATIONS")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL COMMUNICATIONS COMMISSION REGULATORY FEE field.', Comment = '%';
                }
                field("US - FEDERAL TELECOM RELAY"; Rec."US - FEDERAL TELECOM RELAY")
                {
                    ToolTip = 'Specifies the value of the US - FEDERAL TELECOM RELAY SERVICE SURCHARGE IP field.', Comment = '%';
                }
                field("MD - STATE E911 FEES"; Rec."MD - STATE E911 FEES")
                {
                    ToolTip = 'Specifies the value of the MD - STATE E911 FEES field.', Comment = '%';
                }
                field("MD - STATE UNIVERSAL SERVICE"; Rec."MD - STATE UNIVERSAL SERVICE")
                {
                    ToolTip = 'Specifies the value of the MD - STATE UNIVERSAL SERVICE FUND SURCHARGE field.', Comment = '%';
                }
                field("MD - STATE PUBLIC UTILITY"; Rec."MD - STATE PUBLIC UTILITY")
                {
                    ToolTip = 'Specifies the value of the MD - STATE PUBLIC UTILITY COMMISSION FEE field.', Comment = '%';
                }
                field("MD - STATE PUBLIC SERVICE TAX"; Rec."MD - STATE PUBLIC SERVICE TAX")
                {
                    ToolTip = 'Specifies the value of the MD - STATE PUBLIC SERVICE COMPANY TAX field.', Comment = '%';
                }
                field("MD-MONTGOMERY COUNTY,TELEPHONE"; Rec."MD-MONTGOMERY COUNTY,TELEPHONE")
                {
                    ToolTip = 'Specifies the value of the MD - MONTGOMERY COUNTY, TELEPHONE TAX field.', Comment = '%';
                }

            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Import")
            {
                Caption = '&Import';
                Image = ImportExcel;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                ToolTip = 'Import data from excel.';

                trigger OnAction()
                var
                begin
                    ReadExcelSheet();
                    ImportExcelData();
                end;
            }
            action("Create Purchase order")
            {
                Caption = 'Purchase Order';
                Image = Purchase;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                ToolTip = 'Create Purchase Order from Invoice SG data.';
                trigger OnAction()
                var
                    InvoiceRec: Record "Invoice SG";
                    PurchaseHeader: Record "Purchase Header";
                    PurchaseOrderNo: Code[20];
                begin
                    InvoiceRec.Copy(Rec);
                    CreatePurchaseOrder(InvoiceRec);

                end;

            }
            action("Create Sales order")
            {
                Caption = 'Sales Order';
                Image = Order;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;
                ToolTip = 'Create Sales Order from Invoice SG data.';
                trigger OnAction()

                var
                    SalesHeader: Record "Sales Header";
                begin
                    CreateSalesOrders();
                end;

            }

        }
        area(Navigation)
        {

            action(ImportData)
            {

            }
            action(PurchaseOrder)
            {

            }
            action(EditInExcel)
            {

            }
            action(salesOrder)
            {

            }
        }
    }
    var
        TempExcelBuffer: Record "Excel Buffer" temporary;
        FileName: Text[100];
        SheetName: Text[100];
        UploadExcelMsg: Label 'Upload Excel file', MaxLength = 50;
        NoFileFoundMsg: Label 'No file found', MaxLength = 50;
        ExcelImportSuccess: Label 'Excel data imported successfully', MaxLength = 50;

    local procedure ReadExcelSheet()
    var
        FileMgt: Codeunit "File Management";
        FromFile: Text[100];
        IStream: InStream;
    begin
        UploadIntoStream(UploadExcelMsg, '', '', FromFile, IStream);
        if FromFile <> '' then begin
            FileName := FileMgt.GetFileName(FromFile);
            SheetName := TempExcelBuffer.SelectSheetsNameStream(IStream);
        end else
            Error(NoFileFoundMsg);

        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        TempExcelBuffer.OpenBookStream(IStream, SheetName);
        TempExcelBuffer.ReadSheet();
    end;

    procedure ImportExcelData()
    var
        SOImportBuffer: Record "Invoice SG";
        RowNo: Integer;
        ColNo: Integer;
        LineNo: Integer;
        MaxRowNo: Integer;
    begin
        RowNo := 0;
        ColNo := 0;
        MaxRowNo := 0;
        LineNo := 0;
        SOImportBuffer.Reset();
        if SOImportBuffer.FindLast() then
            LineNo := SOImportBuffer."Line No";
        TempExcelBuffer.Reset();
        if TempExcelBuffer.FindLast() then begin
            MaxRowNo := TempExcelBuffer."Row No.";
        end;

        for RowNo := 2 to MaxRowNo do begin
            LineNo := LineNo + 10000;
            SOImportBuffer.Init();
            SOImportBuffer."Line No" := LineNo;
            SOImportBuffer.InvoiceNo := GetValueAtCell(RowNo, 1);
            SOImportBuffer.Organization := GetValueAtCell(RowNo, 2);
            SOImportBuffer.Description := GetValueAtCell(RowNo, 3);
            if not Evaluate(SOImportBuffer.InvoicingDate, GetValueAtCell(RowNo, 4)) then
                SOImportBuffer.InvoicingDate := 0D;

            if not Evaluate(SOImportBuffer.InvoicePeriodFrom, GetValueAtCell(RowNo, 5)) then
                SOImportBuffer.InvoicePeriodFrom := 0D;

            if not Evaluate(SOImportBuffer.InvoicePeriodTo, GetValueAtCell(RowNo, 6)) then
                SOImportBuffer.InvoicePeriodTo := 0D;
            if not Evaluate(SOImportBuffer.ServicePeriodFrom, GetValueAtCell(RowNo, 7)) then
                SOImportBuffer.ServicePeriodFrom := 0D;
            if not Evaluate(SOImportBuffer.ServicePeriodTo, GetValueAtCell(RowNo, 8)) then
                SOImportBuffer.ServicePeriodTo := 0D;
            if not Evaluate(SOImportBuffer.Qty, GetValueAtCell(RowNo, 9)) then
                SOImportBuffer.Qty := 0;
            if not Evaluate(SOImportBuffer.sku, GetValueAtCell(RowNo, 10)) then
                SOImportBuffer.sku := '';

            if not Evaluate(SOImportBuffer.ListPrice, GetValueAtCell(RowNo, 11)) then
                SOImportBuffer.ListPrice := 0;
            if not Evaluate(SOImportBuffer."Discounted Price NotProrated", GetValueAtCell(RowNo, 12)) then
                SOImportBuffer."Discounted Price NotProrated" := 0;
            if not Evaluate(SOImportBuffer.UnitPrice, GetValueAtCell(RowNo, 13)) then
                SOImportBuffer.UnitPrice := 0;
            if not Evaluate(SOImportBuffer.LineTotal, GetValueAtCell(RowNo, 14)) then
                SOImportBuffer.LineTotal := 0;
            if not Evaluate(SOImportBuffer."Organization SubTotal", GetValueAtCell(RowNo, 15)) then
                SOImportBuffer."Organization SubTotal" := 0;
            if not Evaluate(SOImportBuffer."Reseller SubTotal", GetValueAtCell(RowNo, 16)) then
                SOImportBuffer."Reseller SubTotal" := 0;
            if not Evaluate(SOImportBuffer."Invoice SubTotal", GetValueAtCell(RowNo, 17)) then
                SOImportBuffer."Invoice SubTotal" := 0;
            if not Evaluate(SOImportBuffer.HST, GetValueAtCell(RowNo, 18)) then
                SOImportBuffer.HST := 0;
            if not Evaluate(SOImportBuffer.PST, GetValueAtCell(RowNo, 19)) then
                SOImportBuffer.PST := 0;
            if not Evaluate(SOImportBuffer.GST, GetValueAtCell(RowNo, 20)) then
                SOImportBuffer.GST := 0;
            if not Evaluate(SOImportBuffer."Grand Total", GetValueAtCell(RowNo, 21)) then
                SOImportBuffer."Grand Total" := 0;
            if not Evaluate(SOImportBuffer.Currency, GetValueAtCell(RowNo, 22)) then
                SOImportBuffer.Currency := '';
            if not Evaluate(SOImportBuffer."Apply tax(es)", GetValueAtCell(RowNo, 23)) then
                SOImportBuffer."Apply tax(es)" := false;
            if not Evaluate(SOImportBuffer."MD - STATE SALES/USE TAX", GetValueAtCell(RowNo, 24)) then
                SOImportBuffer."MD - STATE SALES/USE TAX" := 0;
            if not Evaluate(SOImportBuffer."US - FEDERAL TELECOM ", GetValueAtCell(RowNo, 25)) then
                SOImportBuffer."US - FEDERAL TELECOM " := 0;
            if not Evaluate(SOImportBuffer."US - FEDERAL TELEPHONE EXCISE", GetValueAtCell(RowNo, 26)) then
                SOImportBuffer."US - FEDERAL TELEPHONE EXCISE" := 0;
            if not Evaluate(SOImportBuffer."US - FEDERAL UNIVERSAL SERVICE", GetValueAtCell(RowNo, 27)) then
                SOImportBuffer."US - FEDERAL UNIVERSAL SERVICE" := 0;
            if not Evaluate(SOImportBuffer."US - FEDERAL NUMBERING ", GetValueAtCell(RowNo, 28)) then
                SOImportBuffer."US - FEDERAL NUMBERING " := 0;
            if not Evaluate(SOImportBuffer."US-FEDERAL COMMUNICATIONS", GetValueAtCell(RowNo, 29)) then
                SOImportBuffer."US-FEDERAL COMMUNICATIONS" := 0;
            if not Evaluate(SOImportBuffer."US - FEDERAL TELECOM RELAY", GetValueAtCell(RowNo, 30)) then
                SOImportBuffer."US - FEDERAL TELECOM RELAY" := 0;
            if not Evaluate(SOImportBuffer."MD - STATE E911 FEES", GetValueAtCell(RowNo, 31)) then
                SOImportBuffer."MD - STATE E911 FEES" := 0;
            if not Evaluate(SOImportBuffer."MD - STATE UNIVERSAL SERVICE", GetValueAtCell(RowNo, 32)) then
                SOImportBuffer."MD - STATE UNIVERSAL SERVICE" := 0;
            if not Evaluate(SOImportBuffer."MD - STATE PUBLIC UTILITY", GetValueAtCell(RowNo, 33)) then
                SOImportBuffer."MD - STATE PUBLIC UTILITY" := 0;
            if not Evaluate(SOImportBuffer."MD - STATE PUBLIC SERVICE TAX", GetValueAtCell(RowNo, 34)) then
                SOImportBuffer."MD - STATE PUBLIC SERVICE TAX" := 0;
            if not Evaluate(SOImportBuffer."MD-MONTGOMERY COUNTY,TELEPHONE", GetValueAtCell(RowNo, 35)) then
                SOImportBuffer."MD-MONTGOMERY COUNTY,TELEPHONE" := 0;
            if not Evaluate(SOImportBuffer."MD-MONTGOMERY COUNTY,TELEPHONE", GetValueAtCell(RowNo, 35)) then
                SOImportBuffer."MD-MONTGOMERY COUNTY,TELEPHONE" := 0;
            if SOImportBuffer."Discounted Price NotProrated" <> 0.00 then
                if SOImportBuffer.UnitPrice <> 0.00 then begin
                    SOImportBuffer."Customer List Price" := (SOImportBuffer.UnitPrice / SOImportBuffer."Discounted Price NotProrated") * SOImportBuffer.ListPrice
                end

                else
                    SOImportBuffer."Customer List Price" := 0.00;
            SOImportBuffer.Insert();
        end;
        Message('Data imported successfully from Excel.');
    end;





    local procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        TempExcelBuffer.Reset();
        if TempExcelBuffer.Get(RowNo, ColNo) then
            exit(TempExcelBuffer."Cell Value as Text")
        else
            exit('');
    end;

    procedure CreatePurchaseOrder(Invoice_lrec: Record "Invoice SG")
    var
        Purchasehdr_lrec: Record "Purchase Header";
        Cust_lrec: Record Customer;
        Purchaseandrec: Record "Purchases & Payables Setup";
        NoSeries: Codeunit "No. Series";
        AMBInvoice_lrec: Record "Invoice SG";
        VendorRec: Record Vendor;
        VendorSelected: Boolean;
        vendorNo: Code[20];
    begin
        if PAGE.RunModal(PAGE::"Vendor List", VendorRec) = ACTION::LookupOK then begin
            vendorNo := VendorRec."No.";
            VendorSelected := true;
        end else
            Error('You must select a vendor.');
        Purchasehdr_lrec.Reset();
        Purchasehdr_lrec.SetRange("Document Type", Purchasehdr_lrec."Document Type"::Invoice);
        Purchasehdr_lrec.SetRange("Vendor Invoice No.", Invoice_lrec.InvoiceNo);
        if Purchasehdr_lrec.FindFirst() then
            Error('Purchase Order with Vendor Invoice No. %1 already exists.', Invoice_lrec.InvoiceNo);
        Purchaseandrec.Get();
        Purchaseandrec.TestField("Order Nos.");
        Purchasehdr_lrec.Init();
        Purchasehdr_lrec."No." := NoSeries.GetNextNo(Purchaseandrec."Invoice Nos.", Today, true);
        Purchasehdr_lrec."Document Type" := Purchasehdr_lrec."Document Type"::Invoice;
        Purchasehdr_lrec.Validate("Buy-from Vendor No.", vendorNo);
        Purchasehdr_lrec."Document Date" := Today();
        Purchasehdr_lrec."Vendor Invoice No." := Invoice_lrec.InvoiceNo;
        Purchasehdr_lrec.Insert();
        AMBInvoice_lrec.Reset();
        AMBInvoice_lrec.SetRange("InvoiceNo", Invoice_lrec.InvoiceNo);
        if AMBInvoice_lrec.FindSet() then begin
            repeat
                CreatePurchaseLine(Purchasehdr_lrec, AMBInvoice_lrec);
            until AMBInvoice_lrec.Next() = 0;
        end else
            Error('No invoice lines found for Invoice No. %1.', Invoice_lrec.InvoiceNo);

        Message('Purchase Order %1 created successfully.', Purchasehdr_lrec."No.");
        if Dialog.Confirm('Purchase order has been created successfully. Do you want to open it?', true) then begin

            Page.Run(PAGE::"Purchase Order", Purchasehdr_lrec);
        end;
    end;



    procedure CreatePurchaseLine(Purchasehdr: Record "Purchase Header"; Invoice_lrec: Record "Invoice SG")
    var
        Purchase_lrec: Record "Purchase Line";
        Nextno: Integer;
    begin
        Purchase_lrec.SetRange("Document No.", Purchasehdr."No.");
        Purchase_lrec.SetRange("Document Type", Purchasehdr."Document Type"::Invoice);
        if Purchase_lrec.FindLast() then
            Nextno := Purchase_lrec."Line No." + 10000
        else
            Nextno := 10000;
        Purchase_lrec.Init();
        Purchase_lrec."Document Type" := Purchasehdr."Document Type";
        Purchase_lrec."Document No." := Purchasehdr."No.";
        Purchase_lrec."Line No." := Nextno;
        Purchase_lrec.Validate("Type", Purchase_lrec."Type"::Item);
        Purchase_lrec.Validate("No.", Invoice_lrec."SKU");
        Purchase_lrec."Description 2" := Invoice_lrec.Organization;
        Purchase_lrec."Service Period From" := Invoice_lrec."ServicePeriodFrom";
        Purchase_lrec."Service Period To" := Invoice_lrec."ServicePeriodTo";
        Purchase_lrec.Validate(Quantity, Invoice_lrec.Qty);
        Purchase_lrec."Direct Unit Cost" := Invoice_lrec."UnitPrice";
        Purchase_lrec."Line Amount" := Invoice_lrec."LineTotal";
        Purchase_lrec.Insert();
    end;


    local procedure CreateSalesOrders()
    var
        SalesHdr: Record "Sales Header";
        CustomerRec: Record Customer;
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit "No. Series";
        InvoiceAMBRec: Record "Invoice SG";
        OrgList: List of [text[100]];
        OrgCode: text[100];
    begin
        InvoiceAMBRec.Reset();
        if InvoiceAMBRec.FindSet() then
            repeat
                if not OrgList.Contains(InvoiceAMBRec.Organization) then
                    OrgList.Add(InvoiceAMBRec.Organization);
            until InvoiceAMBRec.Next() = 0;

        SalesSetup.Get();
        SalesSetup.TestField("Order Nos.");
        foreach OrgCode in OrgList do begin
            CustomerRec.SetRange(Name, OrgCode);
            if not CustomerRec.FindFirst() then
                Error('Customer with Organization %1 not found.', OrgCode);

            SalesHdr.Reset();
            SalesHdr.SetRange("Document Type", SalesHdr."Document Type"::Invoice);
            SalesHdr.SetRange("Sell-to Customer No.", CustomerRec."No.");
            SalesHdr.SetRange("External Document No.", InvoiceAMBRec.InvoiceNo);

            if not SalesHdr.FindFirst() then begin

                SalesHdr.Init();
                SalesHdr."No." := NoSeriesMgt.GetNextNo(SalesSetup."Invoice Nos.", Today, true);
                SalesHdr."Document Type" := SalesHdr."Document Type"::Invoice;
                SalesHdr.Validate("Sell-to Customer No.", CustomerRec."No.");
                SalesHdr."External Document No." := Rec.InvoiceNo;
                SalesHdr."Document Date" := Today();
                SalesHdr.Insert();
                InvoiceAMBRec.Reset();
                InvoiceAMBRec.SetRange("Organization", OrgCode);
                if InvoiceAMBRec.FindSet() then
                repeat
                    CreateSalesLine(SalesHdr, InvoiceAMBRec);
                until InvoiceAMBRec.Next() = 0;

                Message('Sales Order created for Organization: %1', OrgCode);

            end
            else begin
                Message('Sales Invoice already exists for Customer %1 and External Document No. %2',
                    OrgCode, InvoiceAMBRec.InvoiceNo);
            end;
        end;

    end;


    procedure CreateSalesLine(Saleshdr: Record "Sales Header"; Invoice_lrec: Record "Invoice SG")
    var
        salesLine_lrec: Record "Sales Line";
        Nextno: Integer;
    begin
        salesLine_lrec.SetRange("Document No.", Saleshdr."No.");
        salesLine_lrec.SetRange("Document Type", Saleshdr."Document Type"::Invoice);
        if salesLine_lrec.FindLast() then
            Nextno := salesLine_lrec."Line No." + 10000
        else
            Nextno := 10000;
        salesLine_lrec.Init();
        salesLine_lrec."Type" := salesLine_lrec."Type"::Item;
        salesLine_lrec."Document Type" := Saleshdr."Document Type";
        salesLine_lrec."Document No." := Saleshdr."No.";
        salesLine_lrec."Line No." := Nextno;
        salesLine_lrec.Validate("No.", Invoice_lrec."SKU");
        salesLine_lrec.Validate("Service Period From", Invoice_lrec."ServicePeriodFrom");
        salesLine_lrec.Validate("Service Period To", Invoice_lrec."ServicePeriodTo");
        salesLine_lrec.Validate(Quantity, Invoice_lrec.Qty);
        salesLine_lrec.Validate("Unit Cost", Invoice_lrec.UnitPrice);
        if Invoice_lrec.UnitPrice <> 0 then begin
            salesLine_lrec.Validate("Unit Price", Invoice_lrec."Customer List Price")
        end;
        if Invoice_lrec.LineTotal <> 0 then
            salesLine_lrec.Validate("Line Amount", Invoice_lrec.LineTotal);
        salesLine_lrec.Insert();
    end;
}

