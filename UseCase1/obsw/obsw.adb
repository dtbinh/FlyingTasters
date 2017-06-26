-- This file was generated automatically: DO NOT MODIFY IT !

with System.IO;
use System.IO;

with Ada.Unchecked_Conversion;
with Ada.Numerics.Generic_Elementary_Functions;

with TASTE_BasicTypes;
use TASTE_BasicTypes;
with TASTE_Dataview;
use TASTE_Dataview;
with adaasn1rtl;
use adaasn1rtl;

with Interfaces;
use Interfaces;

package body obsw is
    type States is (runing, wait);
    type ctxt_Ty is
        record
        state : States;
        initDone : Boolean := False;
        i : aliased asn1SccMyInteger;
        referenceheight : aliased asn1SccMyReal;
        heightvelocity : aliased asn1SccMyReal;
        force : aliased asn1SccMyReal;
        height : aliased asn1SccMyReal;
    end record;
    ctxt: aliased ctxt_Ty;
    CS_Only  : constant Integer := 5;
    procedure runTransition(Id: Integer);
    procedure Pulse is
        begin
            case ctxt.state is
                when wait =>
                    runTransition(3);
                when runing =>
                    runTransition(1);
                when others =>
                    runTransition(CS_Only);
            end case;
        end Pulse;
        

    procedure Takeoff(ReferenceHeight: access asn1SccMyReal) is
        begin
            case ctxt.state is
                when wait =>
                    ctxt.referenceheight := ReferenceHeight.all;
                    runTransition(4);
                when runing =>
                    ctxt.referenceheight := ReferenceHeight.all;
                    runTransition(2);
                when others =>
                    runTransition(CS_Only);
            end case;
        end Takeoff;
        

    procedure runTransition(Id: Integer) is
        trId : Integer := Id;
        begin
            while (trId /= -1) loop
                case trId is
                    when 0 =>
                        -- writeln('SDL startup') (12,13)
                        Put("SDL startup");
                        New_Line;
                        -- NEXT_STATE Wait (14,18) at 763, 171
                        trId := -1;
                        ctxt.state := Wait;
                        goto next_transition;
                    when 1 =>
                        -- GetTrajectory(i,Height,ReferenceHeight) (23,17)
                        RI�GetTrajectory(ctxt.i'Access, ctxt.Height'Access, ctxt.ReferenceHeight'Access);
                        -- Compute_Force(ReferenceHeight,HeightVelocity,Height,Force) (25,17)
                        RI�Compute_Force(ctxt.ReferenceHeight'Access, ctxt.HeightVelocity'Access, ctxt.Height'Access, ctxt.Force'Access);
                        -- Response(Force,HeightVelocity,Height) (27,17)
                        RI�Response(ctxt.Force'Access, ctxt.HeightVelocity'Access, ctxt.Height'Access);
                        -- GetHeight(Height) (29,19)
                        RI�GetHeight(ctxt.Height'Access);
                        -- GetRef(ReferenceHeight) (31,19)
                        RI�GetRef(ctxt.ReferenceHeight'Access);
                        -- i := (i+1) mod 255 (33,17)
                        ctxt.i := Asn1Int(((ctxt.i + 1) mod 255));
                        -- NEXT_STATE Runing (35,22) at 1121, 534
                        trId := -1;
                        ctxt.state := Runing;
                        goto next_transition;
                    when 2 =>
                        -- NEXT_STATE Wait (39,22) at 1433, 203
                        trId := -1;
                        ctxt.state := Wait;
                        goto next_transition;
                    when 3 =>
                        -- NEXT_STATE Wait (46,22) at 668, 282
                        trId := -1;
                        ctxt.state := Wait;
                        goto next_transition;
                    when 4 =>
                        -- i :=0 (50,17)
                        ctxt.i := Asn1Int(0);
                        -- NEXT_STATE Runing (52,22) at 807, 331
                        trId := -1;
                        ctxt.state := Runing;
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
end obsw;