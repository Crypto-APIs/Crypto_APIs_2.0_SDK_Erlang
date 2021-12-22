-module(cryptoapis_banned_ip_address).

-export([encode/1]).

-export_type([cryptoapis_banned_ip_address/0]).

-type cryptoapis_banned_ip_address() ::
    #{ 'code' := binary(),
       'message' := binary(),
       'details' => list()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'details' := Details
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'details' => Details
     }.
