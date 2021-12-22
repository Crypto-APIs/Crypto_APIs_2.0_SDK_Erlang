-module(cryptoapis_invalid_blockchain).

-export([encode/1]).

-export_type([cryptoapis_invalid_blockchain/0]).

-type cryptoapis_invalid_blockchain() ::
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
