%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosFileTransfer_SupportedProtocolAddresses
%% Source: /net/isildur/ldisk/daily_build/r15b01_prebuild_opu_o.2012-04-01_20/otp_src_R15B01/lib/cosFileTransfer/src/CosFileTransfer.idl
%% IC vsn: 4.2.30
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosFileTransfer_SupportedProtocolAddresses').
-ic_compiled("4_2_30").


-include("CosFileTransfer.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_sequence,{tk_struct,"IDL:omg.org/CosFileTransfer/ProtocolSupport:1.0",
                                "ProtocolSupport",
                                [{"protocol_name",{tk_string,0}},
                                 {"addresses",{tk_sequence,{tk_string,0},0}}]},
                     0}.

%% returns id
id() -> "IDL:omg.org/CosFileTransfer/SupportedProtocolAddresses:1.0".

%% returns name
name() -> "CosFileTransfer_SupportedProtocolAddresses".



