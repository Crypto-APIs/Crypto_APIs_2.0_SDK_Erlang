-module(cryptoapis_list_all_assets_from_all_wallets_ri_fungible_tokens).

-export([encode/1]).

-export_type([cryptoapis_list_all_assets_from_all_wallets_ri_fungible_tokens/0]).

-type cryptoapis_list_all_assets_from_all_wallets_ri_fungible_tokens() ::
    #{ 'amount' := binary(),
       'blockchain' := binary(),
       'identifier' := binary(),
       'network' := binary(),
       'symbol' := binary(),
       'type' := binary()
     }.

encode(#{ 'amount' := Amount,
          'blockchain' := Blockchain,
          'identifier' := Identifier,
          'network' := Network,
          'symbol' := Symbol,
          'type' := Type
        }) ->
    #{ 'amount' => Amount,
       'blockchain' => Blockchain,
       'identifier' => Identifier,
       'network' => Network,
       'symbol' => Symbol,
       'type' => Type
     }.
