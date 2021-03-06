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

package body houston is
    type States is (running, wait);
    type ctxt_Ty is
        record
        state : States;
        initDone : Boolean := False;
        user_input : aliased asn1SccMyInteger;
        control_input : aliased asn1SccMultiDroneControllerInput;
    end record;
    ctxt: aliased ctxt_Ty;
    CS_Only  : constant Integer := 4;
    procedure runTransition(Id: Integer);
    procedure talk_with_Houston(sysSV_to_Houston_events: access asn1SccMyInteger) is
        begin
            case ctxt.state is
                when running =>
                    ctxt.user_input := sysSV_to_Houston_events.all;
                    runTransition(1);
                when wait =>
                    ctxt.user_input := sysSV_to_Houston_events.all;
                    runTransition(3);
                when others =>
                    runTransition(CS_Only);
            end case;
        end talk_with_Houston;
        

    procedure put_control_data(control_data: access asn1SccMultiDroneControllerInput) is
        begin
            case ctxt.state is
                when running =>
                    ctxt.control_input := control_data.all;
                    runTransition(2);
                when wait =>
                    runTransition(CS_Only);
                when others =>
                    runTransition(CS_Only);
            end case;
        end put_control_data;
        

    procedure runTransition(Id: Integer) is
        trId : Integer := Id;
        begin
            while (trId /= -1) loop
                case trId is
                    when 0 =>
                        -- NEXT_STATE Wait (12,18) at 184, 60
                        trId := -1;
                        ctxt.state := Wait;
                        goto next_transition;
                    when 1 =>
                        -- DECISION user_input (-1,-1)
                        -- ANSWER /=1 (20,17)
                        if (ctxt.user_input) /= 1 then
                            -- NEXT_STATE wait (22,30) at 401, 276
                            trId := -1;
                            ctxt.state := wait;
                            goto next_transition;
                            -- ANSWER =1 (24,17)
                        elsif (ctxt.user_input) = 1 then
                            -- NEXT_STATE running (26,30) at 489, 276
                            trId := -1;
                            ctxt.state := running;
                            goto next_transition;
                        end if;
                    when 2 =>
                        -- writeln('Got control data') (31,17)
                        Put("Got control data");
                        New_Line;
                        -- send_control_data(control_input) (33,19)
                        RI�send_control_data(ctxt.control_input'Access);
                        -- writeln('sent control data') (35,17)
                        Put("sent control data");
                        New_Line;
                        -- store_control_data(control_input) (37,17)
                        RI�store_control_data(ctxt.control_input'Access);
                        -- NEXT_STATE running (39,22) at 825, 385
                        trId := -1;
                        ctxt.state := running;
                        goto next_transition;
                    when 3 =>
                        -- writeln('user inpt received by houston') (46,17)
                        Put("user inpt received by houston");
                        New_Line;
                        -- DECISION user_input (-1,-1)
                        -- ANSWER /=1 (50,17)
                        if (ctxt.user_input) /= 1 then
                            -- NEXT_STATE wait (52,30) at 66, 339
                            trId := -1;
                            ctxt.state := wait;
                            goto next_transition;
                            -- ANSWER =1 (54,17)
                        elsif (ctxt.user_input) = 1 then
                            -- writeln('HOUSTON go to RUNNING') (56,25)
                            Put("HOUSTON go to RUNNING");
                            New_Line;
                            -- NEXT_STATE running (58,30) at 231, 389
                            trId := -1;
                            ctxt.state := running;
                            goto next_transition;
                        end if;
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
end houston;