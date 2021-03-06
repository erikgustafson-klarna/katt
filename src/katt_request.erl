%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Copyright 2012- Klarna AB
%%% Copyright 2014- AUTHORS
%%%
%%% Licensed under the Apache License, Version 2.0 (the "License");
%%% you may not use this file except in compliance with the License.
%%% You may obtain a copy of the License at
%%%
%%%     http://www.apache.org/licenses/LICENSE-2.0
%%%
%%% Unless required by applicable law or agreed to in writing, software
%%% distributed under the License is distributed on an "AS IS" BASIS,
%%% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%% See the License for the specific language governing permissions and
%%% limitations under the License.
%%%
%%% @copyright 2012- Klarna AB, AUTHORS
%%%
%%% @doc Accessors for katt_request
%%% @end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%_* Module declaration =======================================================
-module(katt_request).

%%%_* Exports ==================================================================
%% API
-export([ get_method/1
        , set_method/2
        , get_url/1
        , set_url/2
        , get_headers/1
        , set_headers/2
        , get_body/1
        , set_body/2
        ]).

%%%_* Includes =================================================================
-include("katt.hrl").

%%%_* API ======================================================================

-spec get_body(request()) -> binary() | null.
get_body(#katt_request{body = Body}) -> Body.

-spec set_body(binary()|null, request()) -> request().
set_body(Body, #katt_request{} = Req) -> Req#katt_request{body = Body}.

-spec get_headers(request()) -> [http_header()].
get_headers(#katt_request{headers = Hdrs}) -> Hdrs.

-spec set_headers([http_header()], request()) -> request().
set_headers(Hdrs, #katt_request{} = Req) -> Req#katt_request{headers = Hdrs}.

-spec get_method(request()) -> string().
get_method(#katt_request{method = Method}) -> Method.

-spec set_method(string(), request()) -> request().
set_method(Method, #katt_request{} = Req) -> Req#katt_request{method = Method}.

-spec get_url(request()) -> string().
get_url(#katt_request{url = Url}) -> Url.

-spec set_url(string(), request()) -> request().
set_url(Url, #katt_request{} =  Req) -> Req#katt_request{url = Url}.
