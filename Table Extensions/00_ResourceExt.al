tableextension 123456700 CSD_ResourceExt extends Resource
{
    fields
    {
        //CSL New Fields
        modify("Profit %")
        {
            trigger OnafterValidate();
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456701; "CSD_Resource Type"; Option)

        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';

        }
        field(123456702; "CSD_Maximum Participants"; integer)

        {
            Caption = 'Maximum Participants';

        }
        field(123456703; "CSD_Quantity Per Day"; integer)

        {
            Caption = 'Quantity Per Day';

        }

    }

}