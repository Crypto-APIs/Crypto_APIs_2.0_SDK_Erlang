-module(cryptoapis_get_exchange_rate_by_asset_symbols_e403).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_asset_symbols_e403/0]).

-type cryptoapis_get_exchange_rate_by_asset_symbols_e403() ::
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
