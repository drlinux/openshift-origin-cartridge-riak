%%
%% %CopyrightBegin%
%% 
%% Copyright Ericsson AB 1996-2009. All Rights Reserved.
%% 
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%% 
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%% 
%% %CopyrightEnd%
%%
{application, tools,
 [{description, "DEVTOOLS  CXC 138 16"},
  {vsn, "2.6.7"},
  {modules, [cover,
	     cover_web,
	     eprof,
	     fprof,
	     instrument,
	     make,
	     xref,
	     xref_base,
	     xref_compiler,
	     xref_parser,
	     xref_reader,
	     xref_scanner,
	     xref_utils
	    ]
  },
  {registered,[webcover_server]},
  {applications, [kernel, stdlib]},
  {env, [{file_util_search_methods,[{"", ""}, {"ebin", "esrc"}, {"ebin", "src"}]}
	]
  }
 ]
}. 
 
















