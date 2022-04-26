-module(cryptoapis_invalid_transaction_hex).

-export([encode/1]).

-export_type([cryptoapis_invalid_transaction_hex/0]).

-type cryptoapis_invalid_transaction_hex() ::
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
