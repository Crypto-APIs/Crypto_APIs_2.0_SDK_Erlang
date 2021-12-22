-module(cryptoapis_get_exchange_rate_by_asset_symbols_e401).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_asset_symbols_e401/0]).

-type cryptoapis_get_exchange_rate_by_asset_symbols_e401() ::
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
