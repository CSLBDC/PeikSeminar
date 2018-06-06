pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
{
    layout
    {
        // CartExt CSD1.00 - 2018-06-06
        addlast(General)
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {

            }
            field("CSD_Quantity Per Day"; "CSD_Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                field("CSD_Maximum Participants"; "CSD_Maximum Participants")
                {
                    Visible = ShowMaxField;
                }
            }
        }

    }


    var
        [InDataSet]
        ShowMaxField: Boolean;

    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = type::Machine);
        CurrPage.Update(false);
    end;
}