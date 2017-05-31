-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_Dataview;
use TASTE_Dataview;
with TASTE_BasicTypes;
use TASTE_BasicTypes;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body supervisor is
    type States is (running, wait);
    type ctxt_Ty is
        record
        state : States;
        initDone : Boolean := False;
        updated_thrust : aliased asn1SccMyReal;
        ref_thrust : aliased asn1SccMyReal;
    end record;
    ctxt: aliased ctxt_Ty;
    CS_Only  : constant Integer := 5;
    procedure runTransition(Id: Integer);
    procedure pulse is
        begin
            case ctxt.state is
                when running =>
                    runTransition(1);
                when wait =>
                    runTransition(3);
                when others =>
                    runTransition(CS_Only);
            end case;
        end pulse;
        

    procedure takeoff(ref_thrust: access asn1SccMyReal) is
        begin
            case ctxt.state is
                when running =>
                    ctxt.ref_thrust := ref_thrust.all;
                    runTransition(2);
                when wait =>
                    ctxt.ref_thrust := ref_thrust.all;
                    runTransition(4);
                when others =>
                    runTransition(CS_Only);
            end case;
        end takeoff;
        

    procedure runTransition(Id: Integer) is
        trId : Integer := Id;
        begin
            while (trId /= -1) loop
                case trId is
                    when 0 =>
                        -- writeln('SDl startup') (11,13)
                        Put("SDl startup");
                        New_Line;
                        -- NEXT_STATE Wait (13,18) at 530, 211
                        trId := -1;
                        ctxt.state := Wait;
                        goto next_transition;
                    when 1 =>
                        -- readStabilizerSendThrust(ref_thrust, updated_thrust) (19,17)
                        RI‹readStabilizerSendThrust(ctxt.ref_thrust'Access, ctxt.updated_thrust'Access);
                        -- SensorData(updated_thrust) (21,19)
                        RI‹SensorData(ctxt.updated_thrust'Access);
                        -- NEXT_STATE Running (23,22) at 895, 337
                        trId := -1;
                        ctxt.state := Running;
                        goto next_transition;
                    when 2 =>
                        -- NEXT_STATE Wait (27,22) at 1149, 232
                        trId := -1;
                        ctxt.state := Wait;
                        goto next_transition;
                    when 3 =>
                        -- NEXT_STATE Wait (37,22) at 460, 321
                        trId := -1;
                        ctxt.state := Wait;
                        goto next_transition;
                    when 4 =>
                        -- NEXT_STATE Running (41,22) at 574, 321
                        trId := -1;
                        ctxt.state := Running;
                        goto next_transition;
                    when CS_Only =>
                        trId := -1;
                        goto next_transition;
                    when others =>
                        null;
                end case;
                <<next_transition>>
                null;
            end loop;
        end runTransition;
        

    begin
        runTransition(0);
        ctxt.initDone := True;
end supervisor;