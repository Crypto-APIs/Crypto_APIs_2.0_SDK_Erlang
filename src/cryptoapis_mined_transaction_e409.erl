-module(cryptoapis_mined_transaction_e409).

-export([encode/1]).

-export_type([cryptoapis_mined_transaction_e409/0]).

-type cryptoapis_mined_transaction_e409() ::
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
