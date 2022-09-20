-module(cryptoapis_convert_bitcoin_cash_address_e400).

-export([encode/1]).

-export_type([cryptoapis_convert_bitcoin_cash_address_e400/0]).

-type cryptoapis_convert_bitcoin_cash_address_e400() ::
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