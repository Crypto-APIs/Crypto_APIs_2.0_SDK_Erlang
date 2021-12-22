-module(cryptoapis_delete_automatic_tokens_forwarding_e403).

-export([encode/1]).

-export_type([cryptoapis_delete_automatic_tokens_forwarding_e403/0]).

-type cryptoapis_delete_automatic_tokens_forwarding_e403() ::
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
