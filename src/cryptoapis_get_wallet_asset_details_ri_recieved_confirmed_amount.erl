-module(cryptoapis_get_wallet_asset_details_ri_recieved_confirmed_amount).

-export([encode/1]).

-export_type([cryptoapis_get_wallet_asset_details_ri_recieved_confirmed_amount/0]).

-type cryptoapis_get_wallet_asset_details_ri_recieved_confirmed_amount() ::
    #{ 'amount' := binary(),
       'unit' := binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
