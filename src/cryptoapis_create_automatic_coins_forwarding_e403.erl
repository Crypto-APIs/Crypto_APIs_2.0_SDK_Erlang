-module(cryptoapis_create_automatic_coins_forwarding_e403).

-export([encode/1]).

-export_type([cryptoapis_create_automatic_coins_forwarding_e403/0]).

-type cryptoapis_create_automatic_coins_forwarding_e403() ::
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
