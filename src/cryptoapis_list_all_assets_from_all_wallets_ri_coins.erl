-module(cryptoapis_list_all_assets_from_all_wallets_ri_coins).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_from_all_wallets_ri_coins/0]).

-type cryptoapis_list_all_assets_from_all_wallets_ri_coins() ::
    #{ 'blockchain' := binary(),
       'confirmedBalance' := binary(),
       'network' := binary(),
       'totalReceived' := binary(),
       'totalSpent' := binary(),
       'unit' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'confirmedBalance' := ConfirmedBalance,
          'network' := Network,
          'totalReceived' := TotalReceived,
          'totalSpent' := TotalSpent,
          'unit' := Unit
        }) ->
    #{ 'blockchain' => Blockchain,
       'confirmedBalance' => ConfirmedBalance,
       'network' => Network,
       'totalReceived' => TotalReceived,
       'totalSpent' => TotalSpent,
       'unit' => Unit
     }.
