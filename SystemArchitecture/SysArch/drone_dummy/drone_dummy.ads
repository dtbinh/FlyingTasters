-- This file was generated automatically: DO NOT MODIFY IT !

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;



package drone_dummy is
    --  Provided interface "drone_clock"
    procedure drone_clock;
    pragma Export(C, drone_clock, "drone_dummy_drone_clock");
    --  Provided interface "send_control_data"
    procedure send_control_data(control_input: access asn1SccMyInteger);
    pragma Export(C, send_control_data, "drone_dummy_send_control_data");
    --  Required interface "put_drone_data"
    procedure RI�put_drone_data(drone_data: access asn1SccMyInteger);
    pragma import(C, RI�put_drone_data, "drone_dummy_RI_put_drone_data");
end drone_dummy;