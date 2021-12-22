-module(cryptoapis_get_exchange_rate_by_asset_symbols_e422).

-export([encode/1]).

-export_type([cryptoapis_get_exchange_rate_by_asset_symbols_e422/0]).

-type cryptoapis_get_exchange_rate_by_asset_symbols_e422() ::
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
